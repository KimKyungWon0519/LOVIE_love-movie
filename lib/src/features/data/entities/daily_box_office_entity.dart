import 'package:json_annotation/json_annotation.dart';

import 'box_office_result_entity.dart';

part 'daily_box_office_entity.g.dart';

@JsonSerializable()
class DailyBoxOfficeEntity {
  BoxOfficeResultEntity boxOfficeResult;

  DailyBoxOfficeEntity({
    required this.boxOfficeResult,
  });

  factory DailyBoxOfficeEntity.fromJson(Map<String, dynamic> json) =>
      _$DailyBoxOfficeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DailyBoxOfficeEntityToJson(this);
}
