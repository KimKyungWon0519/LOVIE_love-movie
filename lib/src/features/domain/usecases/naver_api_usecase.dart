import 'package:lovie_lovemovie/src/features/domain/repository/naver_repository.dart';

class NaverApiUseCase {
  final NaverRepoistory naverRepoistory;

  const NaverApiUseCase({required this.naverRepoistory});

  Future<String> getImageByName(String name) async {
    return await naverRepoistory.getImageByName(name);
  }
}