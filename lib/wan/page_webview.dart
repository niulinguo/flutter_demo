import 'package:flutter/material.dart';

class WebViewPage extends StatefulWidget {
  final Map<String, dynamic> data;

  const WebViewPage(this.data, {Key? key}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网页'),
      ),
      body: Container(),
    );
  }
}
