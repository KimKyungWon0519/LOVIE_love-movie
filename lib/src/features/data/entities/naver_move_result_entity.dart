import 'package:json_annotation/json_annotation.dart';
import 'package:lovie_lovemovie/src/features/data/entities/naver_movie_info_entity.dart';

part 'naver_move_result_entity.g.dart';

@JsonSerializable()
class NaverMovieResultEntity {
  String lastBuildDate;
  int total;
  int start;
  int display;
  List<NaverMovieInfoEntity> items;


  NaverMovieResultEntity({
    required this.lastBuildDate,
    required this.total,
    required this.start,
    required this.display,
    required this.items,
  });

  factory NaverMovieResultEntity.fromJson(Map<String, dynamic> json) =>
      _$NaverMovieResultEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NaverMovieResultEntityToJson(this);
}
