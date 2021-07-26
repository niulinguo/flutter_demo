import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/config/my_images.dart';
import 'package:flutter_demo/eyes/config/my_strings.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({Key? key}) : super(key: key);

  @override
  _TabNavigationState createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int _currentIndex = 0;
  final List<Widget?> bodyList = [null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createOrGetBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomBarItem.home(),
          BottomBarItem.discovery(),
          BottomBarItem.hot(),
          BottomBarItem.mine(),
        ],
        onTap: _onTap,
        selectedItemColor: const Color(0xff000000),
        unselectedItemColor: const Color(0xff9a9a9a),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _createOrGetBody(int index) {
    if (bodyList[index] == null) {
      bodyList[index] = _createBody(index);
    }
    return bodyList[index]!;
  }

  Widget _createBody(int index) {
    switch (index) {
      case 0:
        {
          return Container(
            color: Colors.blue,
          );
        }
      case 1:
        {
          return Container(
            color: Colors.amberAccent,
          );
        }
      case 2:
        {
          return Container(
            color: Colors.cyanAccent,
          );
        }
      default:
        {
          return Container(
            color: Colors.red,
          );
        }
    }
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class BottomBarItem extends BottomNavigationBarItem {
  const BottomBarItem({
    required String label,
    required Widget icon,
    required Widget activeIcon,
  }) : super(
          label: label,
          icon: icon,
          activeIcon: activeIcon,
        );

  factory BottomBarItem.home() => const BottomBarItem(
        label: MyStrings.home,
        icon: const TabIcon(MyImages.icon_home_normal),
        activeIcon: const TabIcon(MyImages.icon_home_selected),
      );

  factory BottomBarItem.discovery() => const BottomBarItem(
        label: MyStrings.discovery,
        icon: const TabIcon(MyImages.icon_discovery_normal),
        activeIcon: const TabIcon(MyImages.icon_discovery_selected),
      );

  factory BottomBarItem.hot() => const BottomBarItem(
        label: MyStrings.hot,
        icon: const TabIcon(MyImages.icon_hot_normal),
        activeIcon: const TabIcon(MyImages.icon_hot_selected),
      );

  factory BottomBarItem.mine() => const BottomBarItem(
        label: MyStrings.mine,
        icon: const TabIcon(MyImages.icon_mine_normal),
        activeIcon: const TabIcon(MyImages.icon_mine_selected),
      );
}

class TabIcon extends StatelessWidget {
  final String name;

  const TabIcon(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      width: 24,
      height: 24,
    );
  }
}