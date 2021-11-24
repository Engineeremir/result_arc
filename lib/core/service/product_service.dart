import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:result_arc/core/model/product_model.dart';
import 'package:result_arc/core/utiliies/result/data_result.dart';
import 'package:result_arc/core/utiliies/result/error_data_result.dart';
import 'package:result_arc/core/utiliies/result/success_data_result.dart';

class ProductService {
  Dio? dio;

  ProductService() {
    dio = Dio(BaseOptions(baseUrl: "http://10.0.2.2:8070/api"));
  }

  Future<DataResult<List<Product>>> getAllProducts() async {
    final response = await dio!.get("/products/getall");

    final responseBody = response.data;
    final result =
        json.decode(json.encode(responseBody)) as Map<String, dynamic>;
    if (result['success']) {
      final data = List.generate(result['data'].length,
          (index) => Product.fromJson(result['data'][index]));
      final message = result['message'];
      return SuccessDataResult(message, data);
    } else {
      return ErrorDataResult(result['message'], result['data']);
    }
  }
}
