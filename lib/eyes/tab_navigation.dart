import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/config/my_images.dart';
import 'package:flutter_demo/eyes/config/my_strings.dart';
import 'package:flutter_demo/eyes/pages/home/home_page.dart';
import 'package:flutter_demo/eyes/view_model/tab_navigation_view_model.dart';
import 'package:flutter_demo/eyes/widget/provider_widget.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({Key? key}) : super(key: key);

  @override
  _TabNavigationState createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  final List<Widget?> bodyList = [null, null, null, null];
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _createOrGetBody(0),
          _createOrGetBody(1),
          _createOrGetBody(2),
          _createOrGetBody(3),
        ],
      ),
      bottomNavigationBar: ProviderWidget<TabNavigationViewModel>(
        model: TabNavigationViewModel(),
        builder: (BuildContext context, TabNavigationViewModel model,
            Widget? child) {
          return BottomNavigationBar(
            currentIndex: model.currentIndex,
            items: [
              BottomBarItem.home(),
              BottomBarItem.discovery(),
              BottomBarItem.hot(),
              BottomBarItem.mine(),
            ],
            onTap: (index) {
              if (index != model.currentIndex) {
                model.changeBottomTabIndex(index);
                _onTap(context, index);
              }
            },
            selectedItemColor: const Color(0xff000000),
            unselectedItemColor: const Color(0xff9a9a9a),
            type: BottomNavigationBarType.fixed,
          );
        },
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
          return const HomePage();
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

  void _onTap(BuildContext context, int index) {
    _pageController.jumpToPage(index);
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
