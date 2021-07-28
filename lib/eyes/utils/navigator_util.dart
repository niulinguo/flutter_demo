import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void toPage(
  Widget page, {
  bool opaque = false,
}) {
  Get.to(
    () => page,
    opaque: opaque,
  );
}

void toName(String page, dynamic arguments) {
  Get.toNamed(
    page,
    arguments: arguments,
  );
}

void back() {
  Get.back();
}

dynamic argument() {
  return Get.arguments;
}
