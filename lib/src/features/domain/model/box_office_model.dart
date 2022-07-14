import 'package:json_annotation/json_annotation.dart';

class BoxOfficeModel {
  String rnum;
  String rank;
  String rankInten;
  String rankOldAndNew;
  String movieCd;
  String movieNm;
  String openDt;
  String salesAmt;
  String salesShare;
  String salesChange;
  String salesAcc;
  String audiCnt;
  String audiInten;
  String audiChange;
  String audiAcc;
  String scrnCnt;
  String showCnt;
  String image;

  BoxOfficeModel({
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
    this.image = '',
  });
}
