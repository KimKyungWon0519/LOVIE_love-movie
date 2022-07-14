import '../../domain/repository/movie_repository.dart';
import '../data_sources/movie_api.dart';
import '../entities/box_office_entity.dart';
import '../entities/daily_box_office_entity.dart';
import '../entities/response_model.dart';
import '../mapper/box_office_mapper.dart';
import 'base_repository.dart';

class MovieRepositoryImpl with BaseRepository implements MovieRepository {
  @override
  MovieApi movieApi;

  MovieRepositoryImpl({required this.movieApi});

  @override
  dynamic getDailyBoxOffice(String targetDt) async {
    ResponseModel responseModel = await checkError<DailyBoxOfficeEntity>(
        () => movieApi.getDailyBoxOffice(targetDt: targetDt));

    if (responseModel.isSuccess) {
      DailyBoxOfficeEntity dailyBoxOfficeEntity = responseModel.data;
      List<BoxOfficeEntity> boxOfficeEntityList =
          dailyBoxOfficeEntity.boxOfficeResult.dailyBoxOfficeList;
      return boxOfficeEntityList
          .map((e) => BoxOfficeMapper.entityToModel(e))
          .toList();
    } else {
      return '히히';
    }
  }
}
