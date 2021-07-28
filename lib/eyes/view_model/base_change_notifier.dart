import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/widget/loading_state_widget.dart';

class BaseChangeNotifier extends ChangeNotifier {
  ViewState viewState = ViewState.loading;

  bool _disposed = false;

  @override
  void dispose() {
    super.dispose();
    _disposed = true;
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}
