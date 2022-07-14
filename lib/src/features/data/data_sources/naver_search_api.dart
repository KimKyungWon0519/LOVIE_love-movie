import 'package:dio/dio.dart';
import 'package:lovie_lovemovie/src/core/values/constants.dart';
import 'package:lovie_lovemovie/src/features/data/entities/naver_move_result_entity.dart';
import 'package:retrofit/http.dart';

part 'naver_search_api.g.dart';

@RestApi(baseUrl: naverSearchApiBaseUrl)
abstract class NaverSearchApi {
  factory NaverSearchApi(Dio dio, {String baseUrl}) = _NaverSearchApi;

  @GET('')
  Future<NaverMovieResultEntity> getMovieImage({
    @Query('query') required String name,
  });
}