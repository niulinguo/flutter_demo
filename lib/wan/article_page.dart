import 'package:banner_view/banner_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/wan/api/api.dart';
import 'package:flutter_demo/wan/article_item.dart';
import 'package:flutter_demo/wan/page_webview.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  int curPage = 0;
  int totalPage = 0;
  bool _isLoading = false;
  List<dynamic> articles = [];
  List<dynamic> banners = [];
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      var maxScroll = _controller.position.maxScrollExtent;
      var pixels = _controller.position.pixels;
      if (maxScroll == pixels && curPage < totalPage) {
        _getArticleList();
      }
    });

    _pullToRefresh();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Offstage(
          offstage: !_isLoading,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        Offstage(
          offstage: _isLoading,
          child: RefreshIndicator(
            child: ListView.builder(
              itemCount: articles.length + 1,
              itemBuilder: _buildItem,
              controller: _controller,
            ),
            onRefresh: _pullToRefresh,
          ),
        ),
      ],
    );
  }

  Future<void> _pullToRefresh() async {
    curPage = 0;
    Iterable<Future> futures = [
      _getArticleList(),
      _getBanner(),
    ];
    await Future.wait(futures);
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _getArticleList([bool update = true]) async {
    final data = await Api.getArticleList(curPage);
    if (data != null) {
      final map = data['data'];
      final datas = map['datas'];
      totalPage = map['pageCount'];
      if (curPage == 0) {
        articles.clear();
      }
      curPage++;
      articles.addAll(datas);
      if (update) {
        setState(() {});
      }
    }
  }

  Future<void> _getBanner([bool update = true]) async {
    final data = await Api.getBanner();
    if (data != null) {
      banners.clear();
      banners.addAll(data['data']);
      if (update) {
        setState(() {});
      }
    }
  }

  Widget _buildItem(BuildContext context, int position) {
    if (position == 0) {
      return AspectRatio(
        aspectRatio: 9.0 / 5.0,
        child: _bannerView(),
      );
    }
    final itemData = articles[position - 1];
    return ArticleItem(itemData);
  }

  Widget? _bannerView() {
    final List<Widget> list = banners
        .map((item) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WebViewPage(item);
                    },
                  ),
                );
              },
              child: Image.network(
                item['imagePath'],
                fit: BoxFit.cover,
              ),
            ))
        .toList();
    return list.isNotEmpty
        ? BannerView(
            list,
            intervalDuration: const Duration(seconds: 3),
          )
        : null;
  }
}
