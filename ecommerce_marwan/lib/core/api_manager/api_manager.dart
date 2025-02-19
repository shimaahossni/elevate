
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@singleton
class ApiManager{
    Dio dio=Dio(
      BaseOptions(
        baseUrl: 
      )
    );
}