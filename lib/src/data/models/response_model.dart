class ResponseModel<T> {
  bool isSuccess;
  T data;

  ResponseModel({
    required this.isSuccess,
    required this.data,
  });
}
