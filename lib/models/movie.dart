// lib/models/movie.dart

/// Represents a single movie in the application.
class Movie {
  final String title;
  final String genre;
  final int year;
  final String description;
  final String imagePath; // Placeholder for assets/
  bool isFavorite;

  Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.description,
    required this.imagePath,
    this.isFavorite = false,
  });

  // Method to toggle the favorite status (used in Part B)
  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}

// Initial list of 7 famous Bollywood movies (Data Source)
final List<Movie> dummyMovies = [
  Movie(
    title: 'Sholay',
    genre: 'Action, Adventure',
    year: 1975,
    description:
        'A classic epic tale of two criminals hired by a police officer to capture a ruthless bandit, Gabbar Singh.',
    imagePath: 'assets/sholay_poster.png',
    isFavorite: true, // Example: Mark one as a favorite initially
  ),
  Movie(
    title: 'Dilwale Dulhania Le Jayenge',
    genre: 'Romance, Drama',
    year: 1995,
    description:
        'The iconic love story of Raj and Simran who meet in Europe but whose families have different marriage plans.',
    imagePath: 'assets/ddlj_poster.png',
  ),
  Movie(
    title: 'Lagaan',
    genre: 'Sport, Drama',
    year: 2001,
    description:
        'A story of villagers challenging their British rulers to a game of cricket to avoid paying taxes.',
    imagePath: 'assets/lagaan_poster.png',
  ),
  Movie(
    title: '3 Idiots',
    genre: 'Comedy, Drama',
    year: 2009,
    description:
        'A humorous yet profound story of three engineering students and the unconventional ideas of one brilliant mind.',
    imagePath: 'assets/3idiots_poster.png',
  ),
  Movie(
    title: 'Gangs of Wasseypur',
    genre: 'Crime, Thriller',
    year: 2012,
    description:
        'An epic two-part saga chronicling the decades-long power struggle, revenge, and crime in the coal mafia of Wasseypur.',
    imagePath: 'assets/gow_poster.png',
  ),
  Movie(
    title: 'Dangal',
    genre: 'Biography, Sport',
    year: 2016,
    description:
        'Based on the true story of a former wrestler who trains his two daughters to become world-class wrestlers.',
    imagePath: 'assets/dangal_poster.png',
  ),
  Movie(
    title: 'Zindagi Na Milegi Dobara',
    genre: 'Comedy, Drama',
    year: 2011,
    description:
        'Three friends on a bachelor trip confront their fears, amend their relationships, and celebrate life.',
    imagePath: 'assets/znmd_poster.png',
  ),
];
