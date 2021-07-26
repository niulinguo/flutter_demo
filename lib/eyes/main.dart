import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/eyes/app_init.dart';
import 'package:flutter_demo/eyes/double_back_pop_widget.dart';
import 'package:flutter_demo/eyes/tab_navigation.dart';

void main() {
  runApp(MyApp());

  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AppInit.init(),
      builder: (context, snapshot) {
        final Widget widget;
        if (snapshot.connectionState == ConnectionState.done) {
          widget = _contentWidget;
        } else {
          widget = _loadingWidget;
        }
        return MaterialAppWidget(
          child: Scaffold(
            body: widget,
          ),
        );
      },
    );
  }

  Widget get _loadingWidget => Center(
        child: CircularProgressIndicator(),
      );

  Widget get _contentWidget => DoubleBackPopWidget(
        child: TabNavigation(),
      );
}

class MaterialAppWidget extends StatefulWidget {
  final Widget child;

  const MaterialAppWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _MaterialAppWidgetState createState() => _MaterialAppWidgetState();
}

class _MaterialAppWidgetState extends State<MaterialAppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '天眼视频',
      initialRoute: '/',
      routes: {
        '/': (context) => widget.child,
      },
    );
  }
}
