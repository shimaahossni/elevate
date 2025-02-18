// api/data_source_imp/brand/web_services/api_client.dart

import 'package:dio/dio.dart';
import 'package:ecommerce_mvi/domain/model/category.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
@Singleton()
class ApiClient {
  var _dio = Dio(
    BaseOptions(
      baseUrl: 'https://ecommerce.routemisr.com/',
      connectTimeout: Duration(seconds: 60),
    ),
  );

  //getcategories
  Future<List<CategoryDto>?> getCategories() async {
    var dioResponse=await _dio.get('api/v1/categories');
    var response=Categories
}
}
