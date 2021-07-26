import 'package:dio/dio.dart';

class HttpManager {
  HttpManager._();

  static final Dio _dio = Dio();

  // static final Utf8Decoder _utf8decoder = Utf8Decoder();

  static dynamic get(String path) async {
    final Response response = await _dio.get(path);
    if (response.statusCode == 200) {
      return response.data;
    }
    throw Exception('request failure with status code ${response.statusCode}');
  }
}
