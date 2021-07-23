import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {
  final Map<String, dynamic> itemData;

  const ArticleItem(this.itemData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('ddd'),
    );
  }
}
