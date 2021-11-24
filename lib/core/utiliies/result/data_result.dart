// ignore_for_file: overridden_fields




import 'package:result_arc/core/utiliies/result/result.dart';

class DataResult<T> extends Result {
  T? data;

  DataResult(bool success, String message, T data)
      : super(success,message) {
    this.data = data;
  }
}
