import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lovie_lovemovie/src/data/data_sources/movie_api.dart';
import 'package:lovie_lovemovie/src/data/repository/movie_repository_impl.dart';
import 'package:lovie_lovemovie/src/domain/usecases/box_office_usecase.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerLazySingleton<MovieApi>(() => MovieApi(Dio()));
  getIt.registerLazySingleton(
      () => MovieRepositoryImpl(movieApi: getIt.get<MovieApi>()));
  getIt.registerLazySingleton(() =>
      BoxOfficeUseCase(movieRepository: getIt.get<MovieRepositoryImpl>()));
}
