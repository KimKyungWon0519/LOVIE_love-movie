import 'package:dio/dio.dart';
import 'package:lovie_lovemovie/src/core/values/configs.dart';
import 'package:lovie_lovemovie/src/core/values/constants.dart';
import 'package:retrofit/http.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class MovieApi {
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;

  @GET('/boxoffice/searchDailyBoxOfficeList.json')
  Future getDailyBoxOffice({
    @Query('key') String key = apiKey,
    @Query('targetDt') required String targetDt,
  });
}
