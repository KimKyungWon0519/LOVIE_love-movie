import 'package:lovie_lovemovie/src/features/data/data_sources/naver_search_api.dart';

abstract class NaverRepoistory {
  final NaverSearchApi naverSearchApi;

  const NaverRepoistory({required this.naverSearchApi});

  Future<String> getImageByName(String name);
}
