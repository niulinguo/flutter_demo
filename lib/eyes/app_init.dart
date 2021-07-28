import 'package:flutter_splash_screen/flutter_splash_screen.dart';

class AppInit {
  AppInit._();

  static Future<void> init() async {
    await Future.delayed(Duration(seconds: 2));
    FlutterSplashScreen.hide();
  }
}
