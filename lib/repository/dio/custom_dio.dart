import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CustomDio {
  final _dio = Dio();

  CustomDio() {
    _dio.options.headers["X-Parse-Application-Id"] =
        dotenv.get("BACK4APP_X-Parse-Application-Id");
    _dio.options.headers["X-Parse-REST-API-Key"] =
        dotenv.get("BACK4APP_X-Parse-REST-API-Key");
    _dio.options.headers["Content-Type"] = dotenv.get("BACK4APP_Content-Type");
    _dio.options.baseUrl = dotenv.get("BACK4APP_BASE_URL");
  }

  Dio get dio => _dio;
}
