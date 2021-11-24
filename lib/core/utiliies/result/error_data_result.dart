import 'data_result.dart';

class ErrorDataResult<T> extends DataResult<T> {
  ErrorDataResult(String message, T data) : super(false, message, data);
}