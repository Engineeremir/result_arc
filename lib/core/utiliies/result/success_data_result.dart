
import 'data_result.dart';

class SuccessDataResult<T> extends DataResult<T> {
  SuccessDataResult(String message, T data) : super(true, message, data);
}
