// core/databases/api/dio_consumer.dart
import 'package:clean_code__happy_tech/core/databases/api/api_consumer.dart';
import 'package:dio/dio.dart';


class DioConsumer extends ApiConsumer{
  final Dio dio;

  DioConsumer({required this.dio});

//post
  @override
  Future<dynamic> post(String path, {dynamic data, Map<String, String>? queryParameters}) async {
    final response = await dio.post(path, data: data, queryParameters: queryParameters);
    return response.data;
  }
}