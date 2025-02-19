// core/databases/api/api_consumer.dart
abstract class ApiConsumer {
  //get request
  Future<dynamic> get(String path,{Object?data , Map<String, String>? qyeryParameters});

  //post request
  Future<dynamic> post(String path, {dynamic data, Map<String, String>? queryParameters});

  //patch
  Future<dynamic> patch(String path, {dynamic data, Map<String, String>? queryParameters,bool isformdata=false});

  //delete 
  Future<dynamic> delete(String path, {dynamic data, Map<String, String>? queryParameters});
  
}
