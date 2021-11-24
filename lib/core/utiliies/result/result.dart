
import 'abstract_result.dart';

class Result implements IResult {
 
 
  @override
  bool? success;

  @override
  String? message;
  

  Result(this.success, this.message);
}
