// lib/screens/favorites_screen.dart

import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../widgets/movie_list_tile.dart';
import 'movie_detail_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  // Use the global dummyMovies list
  List<Movie> get _favoriteMovies =>
      dummyMovies.where((m) => m.isFavorite).toList();

  void _toggleFavorite(Movie movie) {
    setState(() {
      movie.toggleFavorite();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_favoriteMovies.isEmpty) {
      return const Center(child: Text('You have no favorite movies yet!'));
    }

    // Part C: List all movies the user marked as favorite
    return ListView.builder(
      itemCount: _favoriteMovies.length,
      itemBuilder: (context, index) {
        final movie = _favoriteMovies[index];
        return MovieListTile(
          movie: movie,
          onFavoriteToggle: () =>
              _toggleFavorite(movie), // Allows removal (Part C)
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetailScreen(
                  movie: movie,
                  onFavoriteToggle: _toggleFavorite,
                ),
              ),
            ).then((_) => setState(() {}));
          },
        );
      },
    );
  }
}
