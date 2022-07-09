import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lovie_lovemovie/src/features/domain/repository/movie_repository.dart';
import 'package:lovie_lovemovie/src/features/presentation/bloc/box_office_bloc.dart';
import 'package:lovie_lovemovie/src/features/presentation/viewmodel/home_viewmodel.dart';

import 'src/features/data/data_sources/movie_api.dart';
import 'src/features/data/repository/movie_repository_impl.dart';
import 'src/features/domain/usecases/box_office_usecase.dart';

final getIt = GetIt.instance;

void setUp() {
  MovieApi movieApi = MovieApi(Dio());
  MovieRepository movieRepository = MovieRepositoryImpl(movieApi: movieApi);
  BoxOfficeUseCase boxOfficeUseCase =
      BoxOfficeUseCase(movieRepository: movieRepository);
  BoxOfficeBloc boxOfficeBloc = BoxOfficeBloc([]);
  getIt.registerLazySingleton(() => HomeViewModel(
        boxOfficeUseCase: boxOfficeUseCase,
        boxOfficeBloc: boxOfficeBloc,
      ));
}
