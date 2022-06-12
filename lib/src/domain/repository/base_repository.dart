import '../../data/entities/response_model.dart';

abstract class BaseRepository {
  ResponseModel checkError(Function function);
}