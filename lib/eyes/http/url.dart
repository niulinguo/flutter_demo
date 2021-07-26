class Url {
  Url._();

  static const String baseUrl = 'https://baobab.kaiyanapp.com/api/';

  static const Map<String, String> httpHeader = {
    'Accept': 'application/json, text/plain, */*',
    'Accept-Encoding': 'gzip, deflate, br',
    'Accept-Language': 'zh-CN,zh;q=0.9',
    'Connection': 'keep-alive',
    'Content-Type': 'application/json',
    'User-Agent':
        'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1',
  };

  static const String feedUrl = '${baseUrl}v2/feed?num=1';
  static const String keywordUrl = '${baseUrl}v3/queries/hot';
  static const String searchUrl = '${baseUrl}v1/search?query=';

  static const String videoRelatedUrl = '${baseUrl}v4/video/related?id=';

  static const String communityUrl = '${baseUrl}v7/community/tab/rec';
  static const String categoryUrl = '${baseUrl}v4/categories';
  static const String followUrl = '${baseUrl}v4/tabs/follow';
  static const String categoryVideoUrl = '${baseUrl}v4/categories/videoList?';
  static const String newsUrl =
      '${baseUrl}v7/information/list?vc=6030000&deviceModel=';
  static const String topicsDetailUrl = '${baseUrl}v3/lightTopics/internal/';
  static const String topicsUrl = '${baseUrl}v3/specialTopics';

  static const String rankUrl = '${baseUrl}v4/rankList';
}
