import 'package:json_annotation/json_annotation.dart';

part 'naver_movie_info_entity.g.dart';

@JsonSerializable()
class NaverMovieInfoEntity {
  String title;
  String link;
  String image;
  String subtitle;
  String pubDate;
  String director;
  String actor;
  String userRating;

  NaverMovieInfoEntity({
    required this.title,
    required this.link,
    required this.image,
    required this.subtitle,
    required this.pubDate,
    required this.director,
    required this.actor,
    required this.userRating
  });

  factory NaverMovieInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$NaverMovieInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NaverMovieInfoEntityToJson(this);
}
