import 'package:dio/dio.dart';

import 'environment.dart';

class HttpClient {
  final Dio dio;

  HttpClient() : dio = Dio(
    BaseOptions(
      baseUrl: Environment.BASE_URL,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );

  Future<Response> doPost(String url,Map<String, dynamic> payload,Map<String, dynamic> headers){
    return dio.post(url, options: Options(headers: headers), data: payload);
  }

  Future<Response> doPostFormData(String url,Map<String, dynamic> payload,Map<String, dynamic> headers){
    var formData = FormData.fromMap(payload);
    return dio.post(url, options: Options(headers: headers), data: formData);
  }

  Future<Response> doGet(String url,Map<String, dynamic> headers){
    return dio.get(url,options: Options(headers: headers));
  }

}