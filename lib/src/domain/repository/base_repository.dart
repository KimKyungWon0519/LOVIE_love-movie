import 'package:lovie_lovemovie/src/data/models/response_model.dart';

abstract class BaseRepository {
  ResponseModel checkError(Function function);
}