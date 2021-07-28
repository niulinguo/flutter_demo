import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/config/my_strings.dart';
import 'package:flutter_demo/eyes/pages/home/home_page_body.dart';
import 'package:flutter_demo/eyes/pages/home/home_page_view_model.dart';
import 'package:flutter_demo/eyes/widget/app_bar.dart';
import 'package:flutter_demo/eyes/widget/loading_state_widget.dart';
import 'package:flutter_demo/eyes/widget/provider_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: MyAppBar.normal(
        MyStrings.home,
        showBack: false,
      ),
      body: ProviderWidget<HomePageViewModel>(
        model: HomePageViewModel(),
        onModelInit: (model) {
          model.refresh();
        },
        builder: (context, model, child) {
          return LoadingStateWidget(
            viewState: model.viewState,
            retry: model.retry,
            builder: (context) {
              return HomePageBody();
            },
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
