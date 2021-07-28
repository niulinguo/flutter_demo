import 'package:flutter/material.dart';

class BaseChangeNotifier extends ChangeNotifier {
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
