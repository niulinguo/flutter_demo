import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/pages/home/home_page_view_model.dart';
import 'package:flutter_demo/eyes/widget/banner_widget.dart';
import 'package:provider/provider.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _banner;
  }

  Widget get _banner => Container(
        height: 200,
        padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: BannerWidget(
            dataList: Provider.of<HomePageViewModel>(context).bannerList,
          ),
        ),
      );

  @override
  bool get wantKeepAlive => true;
}
