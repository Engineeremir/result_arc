import 'package:result_arc/core/utiliies/result/result.dart';

class ErrorResult extends Result {
  ErrorResult(message) : super( false, message);
}