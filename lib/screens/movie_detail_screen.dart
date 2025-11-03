// lib/screens/movie_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;
  final Function(Movie) onFavoriteToggle;

  const MovieDetailScreen({
    super.key,
    required this.movie,
    required this.onFavoriteToggle,
  });

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  // Local state to reflect favorite status change instantly (Part B)
  late bool isCurrentlyFavorite;

  @override
  void initState() {
    super.initState();
    isCurrentlyFavorite = widget.movie.isFavorite;
  }

  void _handleFavoriteToggle() {
    setState(() {
      isCurrentlyFavorite = !isCurrentlyFavorite;
    });
    // Call the callback to update the global list/parent screen
    widget.onFavoriteToggle(widget.movie);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title),
        actions: [
          // Part B: Toggle icon to add or remove from favorites
          IconButton(
            icon: Icon(
              isCurrentlyFavorite ? Icons.favorite : Icons.favorite_border,
              color: isCurrentlyFavorite ? Colors.red : Colors.white,
            ),
            onPressed: _handleFavoriteToggle,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Part B: Displays larger poster (Placeholder)
            Center(
              child: Container(
                width: 200,
                height: 300,
                color: Colors.blueGrey.shade100,
                child: const Center(
                  child: Icon(Icons.theaters, size: 80, color: Colors.blueGrey),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Part B: Title
            Text(
              widget.movie.title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Part B: Release year and genre
            Text(
              '${widget.movie.year} | ${widget.movie.genre}',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const Divider(height: 30),

            // Part B: Description
            const Text(
              'Synopsis:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              widget.movie.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
