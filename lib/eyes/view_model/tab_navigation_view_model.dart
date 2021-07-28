import 'package:flutter_demo/eyes/view_model/base_change_notifier.dart';

class TabNavigationViewModel extends BaseChangeNotifier {
  int currentIndex = 0;

  void changeBottomTabIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
