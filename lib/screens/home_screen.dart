// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../widgets/movie_list_tile.dart';
import 'movie_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Use the dummyMovies list defined in the model file
  final List<Movie> movies = dummyMovies;

  void _toggleFavorite(Movie movie) {
    setState(() {
      movie.toggleFavorite();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieListTile(
          movie: movie,
          onFavoriteToggle: () => _toggleFavorite(movie),
          onTap: () {
            // Part A: Tapping an item opens a Detail Screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetailScreen(
                  movie: movie,
                  onFavoriteToggle: _toggleFavorite,
                ),
              ),
              // The .then() ensures the list updates if a change was made on the detail screen
            ).then((_) => setState(() {}));
          },
        );
      },
    );
  }
}
