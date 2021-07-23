import 'package:flutter_demo/wan/api/api.dart';

void main() async {
  final data = await Api.getArticleList(1);
  print(data);
}
