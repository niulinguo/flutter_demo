import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    Key? key,
    Brightness? brightness,
    bool? centerTitle,
    double? elevation,
    Color? backgroundColor,
    Widget? leading,
    List<Widget>? actions,
    Widget? title,
  }) : super(
          key: key,
          brightness: brightness,
          centerTitle: centerTitle,
          elevation: elevation,
          backgroundColor: backgroundColor,
          leading: leading,
          actions: actions,
          title: title,
        );

  factory MyAppBar.normal(
    String title, {
    bool showBack = true,
    List<Widget>? actions,
  }) {
    return MyAppBar(
      brightness: Brightness.light,
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: showBack
          ? BackButton(
              color: Colors.black,
            )
          : null,
      actions: actions,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
