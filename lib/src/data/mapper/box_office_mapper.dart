import 'package:lovie_lovemovie/src/data/entities/box_office_entity.dart';
import 'package:lovie_lovemovie/src/domain/model/box_office_model.dart';

class BoxOfficeMapper {
  static BoxOfficeModel entityToModel(BoxOfficeEntity boxOfficeEntity) {
    return BoxOfficeModel(
      rnum: int.parse(boxOfficeEntity.rnum),
      rank: int.parse(boxOfficeEntity.rank),
      rankInten: int.parse(boxOfficeEntity.rnum),
      rankOldAndNew: boxOfficeEntity.rankOldAndNew,
      movieCd: boxOfficeEntity.movieCd,
      movieNm: boxOfficeEntity.movieNm,
      openDt: boxOfficeEntity.openDt,
      salesAmt: int.parse(boxOfficeEntity.salesAmt),
      salesShare: double.parse(boxOfficeEntity.salesShare),
      salesChange: double.parse(boxOfficeEntity.salesChange),
      salesAcc: int.parse(boxOfficeEntity.salesAcc),
      audiCnt: int.parse(boxOfficeEntity.audiCnt),
      audiInten: int.parse(boxOfficeEntity.audiInten),
      audiChange: int.parse(boxOfficeEntity.audiChange),
      audiAcc: int.parse(boxOfficeEntity.audiAcc),
      scrnCnt: int.parse(boxOfficeEntity.scrnCnt),
      showCnt: int.parse(boxOfficeEntity.showCnt),
    );
  }

  static BoxOfficeEntity modelToEntity(BoxOfficeModel boxOfficeModel) {
    return BoxOfficeEntity(
      rnum: boxOfficeModel.rnum.toString(),
      rank: boxOfficeModel.rank.toString(),
      rankInten: boxOfficeModel.rnum.toString(),
      rankOldAndNew: boxOfficeModel.rankOldAndNew,
      movieCd: boxOfficeModel.movieCd,
      movieNm: boxOfficeModel.movieNm,
      openDt: boxOfficeModel.openDt,
      salesAmt: boxOfficeModel.salesAmt.toString(),
      salesShare: boxOfficeModel.salesShare.toString(),
      salesChange: boxOfficeModel.salesChange.toString(),
      salesAcc: boxOfficeModel.salesAcc.toString(),
      audiCnt: boxOfficeModel.audiCnt.toString(),
      audiInten: boxOfficeModel.audiInten.toString(),
      audiChange: boxOfficeModel.audiChange.toString(),
      audiAcc: boxOfficeModel.audiAcc.toString(),
      scrnCnt: boxOfficeModel.scrnCnt.toString(),
      showCnt: boxOfficeModel.showCnt.toString(),
    );
  }
}
