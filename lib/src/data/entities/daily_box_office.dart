import 'package:json_annotation/json_annotation.dart';
import 'package:lovie_lovemovie/src/data/entities/box_office_result.dart';

part 'daily_box_office.g.dart';

@JsonSerializable()
class DailyBoxOffice {
  BoxOfficeResult boxOfficeResult;

  DailyBoxOffice({
    required this.boxOfficeResult,
  });

  factory DailyBoxOffice.fromJson(Map<String, dynamic> json) => _$DailyBoxOfficeFromJson(json);

  Map<String, dynamic> toJson() => _$DailyBoxOfficeToJson(this);
}
