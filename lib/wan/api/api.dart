import 'package:dio/dio.dart';

final dio = Dio();
const String host = "https://wanandroid.com";

class Api {
  static Future<Map<String, dynamic>?> getArticleList(int curPage) async {
    final response = await dio.get("$host/article/listproject/$curPage/json");
    if (response.statusCode == 200) {
      return response.data;
    }
    return null;
  }

  static Future<Map<String, dynamic>?> getBanner() async {
    final response = await dio.get("$host/banner/json");
    if (response.statusCode == 200) {
      return response.data;
    }
    return null;
  }
}
