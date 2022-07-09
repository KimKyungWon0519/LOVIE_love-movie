import 'package:dio/dio.dart';
import 'package:lovie_lovemovie/src/core/values/configs.dart';
import 'package:lovie_lovemovie/src/core/values/constants.dart';
import 'package:retrofit/http.dart';

import '../entities/daily_box_office_entity.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: movieApiBaseUrl)
abstract class MovieApi {
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;

  @GET('/boxoffice/searchDailyBoxOfficeList.json')
  Future<DailyBoxOfficeEntity> getDailyBoxOffice({
    @Query('key') String key = apiKey,
    @Query('targetDt') required String targetDt,
  });
}
