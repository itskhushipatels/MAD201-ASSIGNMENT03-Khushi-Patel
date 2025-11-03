// lib/widgets/movie_list_tile.dart

import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieListTile extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;
  final VoidCallback onFavoriteToggle;

  const MovieListTile({
    super.key,
    required this.movie,
    required this.onTap,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 2,
      child: ListTile(
        onTap: onTap,
        // Part A: Poster image placeholder
        leading: const SizedBox(
          width: 50,
          height: 50,
          child: Icon(
            Icons.movie_creation_outlined,
            size: 40,
            color: Colors.blueGrey,
          ),
        ),

        // Part A: Movie title
        title: Text(
          movie.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),

        // Part A: Genre or year
        subtitle: Text('${movie.genre} | ${movie.year}'),

        // Part A: Favorite icon
        trailing: IconButton(
          icon: Icon(
            movie.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: movie.isFavorite ? Colors.red : Colors.grey,
          ),
          onPressed: onFavoriteToggle,
        ),
      ),
    );
  }
}
