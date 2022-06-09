class ResponseModel<T> {
  bool isSuccess;
  T data;

  ResponseModel.success({
    this.isSuccess = true,
    required this.data,
  });

  ResponseModel.error({
    this.isSuccess = false,
    required this.data,
  });
}
