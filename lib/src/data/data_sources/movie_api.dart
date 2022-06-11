import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'movie_api.g.dart';

@RestApi()
abstract class MovieApi {
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;
}
