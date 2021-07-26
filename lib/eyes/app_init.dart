import 'package:flutter_demo/eyes/http/http_manager.dart';
import 'package:flutter_demo/eyes/http/url.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';

class AppInit {
  AppInit._();

  static Future<void> init() async {
    await Future.delayed(Duration(seconds: 2));
    FlutterSplashScreen.hide();

    final result = await HttpManager.get(Url.feedUrl);
    print(result);
  }
}
