import 'package:lovie_lovemovie/src/features/data/data_sources/naver_search_api.dart';
import 'package:lovie_lovemovie/src/features/data/entities/naver_move_result_entity.dart';
import 'package:lovie_lovemovie/src/features/data/entities/response_model.dart';
import 'package:lovie_lovemovie/src/features/domain/repository/naver_repository.dart';

import 'base_repository.dart';

class NaverRespositoryImpl with BaseRepository implements NaverRepoistory {
  @override
  final NaverSearchApi naverSearchApi;

  const NaverRespositoryImpl({required this.naverSearchApi});

  @override
  Future<String> getImageByName(String name) async {
    ResponseModel responseModel = await checkError<NaverMovieResultEntity>(
        () => naverSearchApi.getMovieImage(name: name));


    String image = '';

    if (responseModel.isSuccess) {
      image = (responseModel.data as NaverMovieResultEntity).items.last.image;
    }

    return image;
  }
}
