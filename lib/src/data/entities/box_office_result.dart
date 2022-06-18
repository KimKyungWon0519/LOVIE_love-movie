import 'package:json_annotation/json_annotation.dart';
import 'package:lovie_lovemovie/src/data/entities/box_office.dart';

part 'box_office_result.g.dart';

@JsonSerializable()
class BoxOfficeResult {
  String boxofficeType;
  String showRange;
  List<BoxOffice> dailyBoxOfficeList;

  BoxOfficeResult({
    required this.boxofficeType,
    required this.showRange,
    required this.dailyBoxOfficeList,
  });

  factory BoxOfficeResult.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeResultFromJson(json);

  Map<String, dynamic> toJson() => _$BoxOfficeResultToJson(this);
}
