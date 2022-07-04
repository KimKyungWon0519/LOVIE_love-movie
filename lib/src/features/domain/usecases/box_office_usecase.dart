
import '../repository/movie_repository.dart';

class BoxOfficeUseCase {
  final MovieRepository movieRepository;

  BoxOfficeUseCase({required this.movieRepository});

  dynamic getDailyBoxOffice(String date) async {
    return await movieRepository.getDailyBoxOffice(date);
  }
}
