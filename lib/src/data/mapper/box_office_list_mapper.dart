import 'package:lovie_lovemovie/src/data/entities/box_office_entity.dart';
import 'package:lovie_lovemovie/src/domain/model/box_office_model.dart';

class BoxOfficeListMapper {
  static List<BoxOfficeModel> entityToModel(
      List<BoxOfficeEntity> boxOfficeEntityList) {
    return boxOfficeEntityList.cast<BoxOfficeModel>();
  }

  static List<BoxOfficeEntity> modelToEntity(List<BoxOfficeModel> boxOfficeModelList) {
    return boxOfficeModelList.cast<BoxOfficeEntity>();
  }
}
