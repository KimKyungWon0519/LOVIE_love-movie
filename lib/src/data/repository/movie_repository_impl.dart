import 'package:lovie_lovemovie/src/data/data_sources/movie_api.dart';
import 'package:lovie_lovemovie/src/data/entities/box_office_entity.dart';
import 'package:lovie_lovemovie/src/data/entities/daily_box_office_entity.dart';
import 'package:lovie_lovemovie/src/data/entities/response_model.dart';
import 'package:lovie_lovemovie/src/data/mapper/box_office_mapper.dart';
import 'package:lovie_lovemovie/src/data/repository/base_repository.dart';
import 'package:lovie_lovemovie/src/domain/model/box_office_model.dart';
import 'package:lovie_lovemovie/src/domain/repository/movie_repository.dart';

class MovieRepositoryImpl with BaseRepository implements MovieRepository {
  @override
  MovieApi movieApi;

  MovieRepositoryImpl({required this.movieApi});

  @override
  dynamic getDailyBoxOffice(String targetDt) async {
    ResponseModel responseModel =
        await checkError(() => movieApi.getDailyBoxOffice(targetDt: targetDt));

    if (responseModel.isSuccess) {
      DailyBoxOfficeEntity dailyBoxOfficeEntity = responseModel.data;
      List<BoxOfficeEntity> boxOfficeEntityList =
          dailyBoxOfficeEntity.boxOfficeResult.dailyBoxOfficeList;
      return boxOfficeEntityList
          .map((e) => BoxOfficeMapper.entityToModel(e)).toList();
    } else {
      return '히히';
    }
  }
}
