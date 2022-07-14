import 'package:dio/dio.dart';

import '../entities/daily_box_office_entity.dart';
import '../entities/response_model.dart';

class BaseRepository {
  Future<ResponseModel> checkError<T>(Function function) async {
    ResponseModel responseModel;

    try {
      T data = await function.call();
      responseModel = ResponseModel<T>.success(data: data);
    } on DioError catch(e) {
      responseModel = ResponseModel<String>.error(data: 'asdf');
    }

    return responseModel;
  }

}