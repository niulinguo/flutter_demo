import 'package:flutter_demo/eyes/http/http_manager.dart';
import 'package:flutter_demo/eyes/http/model/feed.dart';
import 'package:flutter_demo/eyes/http/url.dart';
import 'package:flutter_demo/eyes/utils/my_toast.dart';
import 'package:flutter_demo/eyes/view_model/base_change_notifier.dart';
import 'package:flutter_demo/eyes/widget/loading_state_widget.dart';

class HomePageViewModel extends BaseChangeNotifier {
  List<Item> bannerList = [];

  Future<void> refresh() async {
    try {
      final response = await HttpManager.get(Url.feedUrl);
      final feed = Feed.fromJson(response);
      bannerList = feed.issueList[0].itemList;
      bannerList.removeWhere((element) => element.type == 'banner2');
      viewState = ViewState.done;
    } catch (e) {
      MyToast.showError(e.toString());
      viewState = ViewState.error;
    } finally {
      notifyListeners();
    }
  }

  Future<void> retry() async {
    viewState = ViewState.loading;
    notifyListeners();
    return await refresh();
  }
}
