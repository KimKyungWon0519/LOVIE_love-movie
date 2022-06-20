import 'package:json_annotation/json_annotation.dart';
import 'package:lovie_lovemovie/src/data/entities/box_office_entity.dart';

part 'box_office_result_entity.g.dart';

@JsonSerializable()
class BoxOfficeResultEntity {
  String boxofficeType;
  String showRange;
  List<BoxOfficeEntity> dailyBoxOfficeList;

  BoxOfficeResultEntity({
    required this.boxofficeType,
    required this.showRange,
    required this.dailyBoxOfficeList,
  });

  factory BoxOfficeResultEntity.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeResultEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BoxOfficeResultEntityToJson(this);
}
