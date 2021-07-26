import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/config/my_strings.dart';
import 'package:flutter_demo/eyes/utils/my_toast.dart';

class DoubleBackPopWidget extends StatefulWidget {
  final Widget child;

  const DoubleBackPopWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _DoubleBackPopWidgetState createState() => _DoubleBackPopWidgetState();
}

class _DoubleBackPopWidgetState extends State<DoubleBackPopWidget> {
  DateTime? lastBackClickTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: widget.child,
    );
  }

  Future<bool> _onWillPop() async {
    var currentTime = DateTime.now();
    if (lastBackClickTime == null ||
        currentTime.difference(lastBackClickTime!) > Duration(seconds: 2)) {
      lastBackClickTime = currentTime;
      MyToast.showTip(MyStrings.exit_tip);
      return false;
    }
    return true;
  }
}
