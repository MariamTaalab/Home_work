/*Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7. */
void main() {
  List<Movie> movies = [
    Movie('Frozen', 8),
    Movie('Up', 5),
    Movie('Lion King', 7.5),
    Movie('Toy story', 8.5),
  ];
  print("Movie with rating above 7:");
  for (var movie in movies) {
    if (movie.rating > 7) {
      print("${movie.title}: Rating: ${movie.rating}");
    }
  }
}

class Movie {
  String title;
  double rating;
  Movie(this.title, this.rating);
}
