import 'package:dio/dio.dart';
import 'package:lovie_lovemovie/src/core/values/constants.dart';
import 'package:retrofit/http.dart';

part 'naver_search_api.g.dart';

@RestApi(baseUrl: naverSearchApiBaseUrl)
abstract class NaverSearchApi {
  factory NaverSearchApi(Dio dio, {String baseUrl}) = _NaverSearchApi;
}