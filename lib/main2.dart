import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String data = '我帅';

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        this.data = '我真帅';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFlutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFlutter'),
        ),
        body: Center(
          child: Text(
            this.data,
          ),
        ),
        floatingActionButton: Text('dd'),
      ),
    );
  }
}
