import '../../data/data_sources/movie_api.dart';

abstract class MovieRepository {
  MovieApi movieApi;

  MovieRepository({required this.movieApi});

  dynamic getDailyBoxOffice(String targetDt);
}
