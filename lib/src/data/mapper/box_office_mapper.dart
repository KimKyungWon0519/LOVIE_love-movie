import 'package:lovie_lovemovie/src/data/entities/box_office_entity.dart';
import 'package:lovie_lovemovie/src/domain/model/box_office_model.dart';

class BoxOfficeMapper {
  static BoxOfficeModel entityToModel(BoxOfficeEntity boxOfficeEntity) {
    return BoxOfficeModel(
      rnum: boxOfficeEntity.rnum,
      rank: boxOfficeEntity.rank,
      rankInten: boxOfficeEntity.rnum,
      rankOldAndNew: boxOfficeEntity.rankOldAndNew,
      movieCd: boxOfficeEntity.movieCd,
      movieNm: boxOfficeEntity.movieNm,
      openDt: boxOfficeEntity.openDt,
      salesAmt: boxOfficeEntity.salesAmt,
      salesShare: boxOfficeEntity.salesShare,
      salesChange: boxOfficeEntity.salesChange,
      salesAcc: boxOfficeEntity.salesAcc,
      audiCnt: boxOfficeEntity.audiCnt,
      audiInten: boxOfficeEntity.audiInten,
      audiChange: boxOfficeEntity.audiChange,
      audiAcc: boxOfficeEntity.audiAcc,
      scrnCnt: boxOfficeEntity.scrnCnt,
      showCnt: boxOfficeEntity.showCnt,
    );
  }

  static BoxOfficeEntity modelToEntity(BoxOfficeModel boxOfficeModel) {
    return BoxOfficeEntity(
      rnum: boxOfficeModel.rnum,
      rank: boxOfficeModel.rank,
      rankInten: boxOfficeModel.rnum,
      rankOldAndNew: boxOfficeModel.rankOldAndNew,
      movieCd: boxOfficeModel.movieCd,
      movieNm: boxOfficeModel.movieNm,
      openDt: boxOfficeModel.openDt,
      salesAmt: boxOfficeModel.salesAmt,
      salesShare: boxOfficeModel.salesShare,
      salesChange: boxOfficeModel.salesChange,
      salesAcc: boxOfficeModel.salesAcc,
      audiCnt: boxOfficeModel.audiCnt,
      audiInten: boxOfficeModel.audiInten,
      audiChange: boxOfficeModel.audiChange,
      audiAcc: boxOfficeModel.audiAcc,
      scrnCnt: boxOfficeModel.scrnCnt,
      showCnt: boxOfficeModel.showCnt,
    );
  }
}
