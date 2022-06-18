import 'package:json_annotation/json_annotation.dart';

part 'box_office.g.dart';

@JsonSerializable()
class BoxOffice {
  int rnum;
  int rank;
  int rankInten;
  String rankOldAndNew;
  String movieCd;
  String movieNm;
  String openDt;
  int salesAmt;
  double salesShare;
  double salesChange;
  int salesAcc;
  int audiCnt;
  int audiInten;
  int audiChange;
  int audiAcc;
  int scrnCnt;
  int showCnt;

  BoxOffice({
    required this.rnum,
    required this.rank,
    required this.rankInten,
    required this.rankOldAndNew,
    required this.movieCd,
    required this.movieNm,
    required this.openDt,
    required this.salesAmt,
    required this.salesShare,
    required this.salesChange,
    required this.salesAcc,
    required this.audiCnt,
    required this.audiInten,
    required this.audiChange,
    required this.audiAcc,
    required this.scrnCnt,
    required this.showCnt,
  });

  factory BoxOffice.fromJson(Map<String, dynamic> json) => _$BoxOfficeFromJson(json);

  Map<String, dynamic> toJson() => _$BoxOfficeToJson(this);
}
