import 'package:dio/dio.dart';
import 'package:lovie_lovemovie/src/data/entities/daily_box_office.dart';
import 'package:lovie_lovemovie/src/data/entities/response_model.dart';

class BaseRepository {
  Future<ResponseModel> checkError(Function function) async {
    ResponseModel responseModel;

    try {
      DailyBoxOffice dailyBoxOffice = await function.call();
      responseModel = ResponseModel.success(data: dailyBoxOffice);
    } on DioError catch(e) {
      responseModel = ResponseModel.error(data: 'asdf');
    }

    return responseModel;
  }

}