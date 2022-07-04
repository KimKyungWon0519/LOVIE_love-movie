import 'package:dio/dio.dart';

import '../entities/daily_box_office_entity.dart';
import '../entities/response_model.dart';

class BaseRepository {
  Future<ResponseModel> checkError(Function function) async {
    ResponseModel responseModel;

    try {
      DailyBoxOfficeEntity dailyBoxOffice = await function.call();
      responseModel = ResponseModel.success(data: dailyBoxOffice);
    } on DioError catch(e) {
      responseModel = ResponseModel.error(data: 'asdf');
    }

    return responseModel;
  }

}