class Feed {
  late List<IssueList> issueList;
  late String nextPageUrl;
  late int nextPublishTime;
  late String newestIssueType;
  late Null dialog;

  Feed({
    required this.issueList,
    required this.nextPageUrl,
    required this.nextPublishTime,
    required this.newestIssueType,
    this.dialog,
  });

  Feed.fromJson(Map<String, dynamic> json) {
    if (json['issueList'] != null) {
      issueList = <IssueList>[];
      json['issueList'].forEach((v) {
        issueList.add(new IssueList.fromJson(v));
      });
    }
    nextPageUrl = json['nextPageUrl'];
    nextPublishTime = json['nextPublishTime'];
    newestIssueType = json['newestIssueType'];
    dialog = json['dialog'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.issueList != null) {
      data['issueList'] = this.issueList.map((v) => v.toJson()).toList();
    }
    data['nextPageUrl'] = this.nextPageUrl;
    data['nextPublishTime'] = this.nextPublishTime;
    data['newestIssueType'] = this.newestIssueType;
    data['dialog'] = this.dialog;
    return data;
  }
}

class IssueList {
  late int releaseTime;
  late String type;
  late int date;
  late int publishTime;
  late List<ItemList> itemList;
  late int count;

  IssueList({
    required this.releaseTime,
    required this.type,
    required this.date,
    required this.publishTime,
    required this.itemList,
    required this.count,
  });

  IssueList.fromJson(Map<String, dynamic> json) {
    releaseTime = json['releaseTime'];
    type = json['type'];
    date = json['date'];
    publishTime = json['publishTime'];
    if (json['itemList'] != null) {
      itemList = <ItemList>[];
      json['itemList'].forEach((v) {
        itemList.add(new ItemList.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['releaseTime'] = this.releaseTime;
    data['type'] = this.type;
    data['date'] = this.date;
    data['publishTime'] = this.publishTime;
    if (this.itemList != null) {
      data['itemList'] = this.itemList.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class ItemList {
  late String type;
  late Data data;
  Null trackingData;
  Null tag;
  late int id;
  late int adIndex;

  ItemList({
    required this.type,
    required this.data,
    this.trackingData,
    this.tag,
    required this.id,
    required this.adIndex,
  });

  ItemList.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    data = new Data.fromJson(json['data']);
    trackingData = json['trackingData'];
    tag = json['tag'];
    id = json['id'];
    adIndex = json['adIndex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['trackingData'] = this.trackingData;
    data['tag'] = this.tag;
    data['id'] = this.id;
    data['adIndex'] = this.adIndex;
    return data;
  }
}

class Data {
  late String dataType;
  late int id;
  late String title;
  late String description;
  late String image;
  late String actionUrl;
  late List<String> adTrack;
  late bool shade;
  Null label;
  late List<String> labelList;
  Null header;
  late bool autoPlay;
  late String library;
  late List<Tags> tags;
  late Consumption consumption;
  late String resourceType;
  late String slogan;
  late Provider provider;
  late String category;
  late Author author;
  late Cover cover;
  late String playUrl;
  late String thumbPlayUrl;
  late int duration;
  late WebUrl webUrl;
  late int releaseTime;
  late List<PlayInfo> playInfo;
  Null campaign;
  Null waterMarks;
  late bool ad;
  late String type;
  late String titlePgc;
  late String descriptionPgc;
  late String remark;
  late bool ifLimitVideo;
  late int searchWeight;
  Null brandWebsiteInfo;
  Null videoPosterBean;
  late int idx;
  Null shareAdTrack;
  Null favoriteAdTrack;
  Null webAdTrack;
  late int date;
  Null promotion;
  late String descriptionEditor;
  late bool collected;
  late bool reallyCollected;
  late bool played;
  late List<String> subtitles;
  Null lastViewTime;
  Null playlists;
  Null src;
  Null recallSource;

  Data({
    required this.dataType,
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.actionUrl,
    required this.adTrack,
    required this.shade,
    this.label,
    required this.labelList,
    this.header,
    required this.autoPlay,
    required this.library,
    required this.tags,
    required this.consumption,
    required this.resourceType,
    required this.slogan,
    required this.provider,
    required this.category,
    required this.author,
    required this.cover,
    required this.playUrl,
    required this.thumbPlayUrl,
    required this.duration,
    required this.webUrl,
    required this.releaseTime,
    required this.playInfo,
    this.campaign,
    this.waterMarks,
    required this.ad,
    required this.type,
    required this.titlePgc,
    required this.descriptionPgc,
    required this.remark,
    required this.ifLimitVideo,
    required this.searchWeight,
    this.brandWebsiteInfo,
    this.videoPosterBean,
    required this.idx,
    this.shareAdTrack,
    this.favoriteAdTrack,
    this.webAdTrack,
    required this.date,
    this.promotion,
    required this.descriptionEditor,
    required this.collected,
    required this.reallyCollected,
    required this.played,
    required this.subtitles,
    this.lastViewTime,
    this.playlists,
    this.src,
    this.recallSource,
  });

  Data.fromJson(Map<String, dynamic> json) {
    dataType = json['dataType'];
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    actionUrl = json['actionUrl'];
    if (json['adTrack'] != null) {
      adTrack = <String>[];
      json['adTrack'].forEach((v) {
        adTrack.add(v);
      });
    }
    shade = json['shade'];
    label = json['label'];
    if (json['labelList'] != null) {
      labelList = <String>[];
      json['labelList'].forEach((v) {
        labelList.add(v);
      });
    }
    header = json['header'];
    autoPlay = json['autoPlay'];
    library = json['library'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags.add(new Tags.fromJson(v));
      });
    }
    consumption = new Consumption.fromJson(json['consumption']);
    resourceType = json['resourceType'];
    slogan = json['slogan'];
    provider = new Provider.fromJson(json['provider']);
    category = json['category'];
    author = new Author.fromJson(json['author']);
    cover = new Cover.fromJson(json['cover']);
    playUrl = json['playUrl'];
    thumbPlayUrl = json['thumbPlayUrl'];
    duration = json['duration'];
    webUrl = new WebUrl.fromJson(json['webUrl']);
    releaseTime = json['releaseTime'];
    if (json['playInfo'] != null) {
      playInfo = <PlayInfo>[];
      json['playInfo'].forEach((v) {
        playInfo.add(new PlayInfo.fromJson(v));
      });
    }
    campaign = json['campaign'];
    waterMarks = json['waterMarks'];
    ad = json['ad'];
    type = json['type'];
    titlePgc = json['titlePgc'];
    descriptionPgc = json['descriptionPgc'];
    remark = json['remark'];
    ifLimitVideo = json['ifLimitVideo'];
    searchWeight = json['searchWeight'];
    brandWebsiteInfo = json['brandWebsiteInfo'];
    videoPosterBean = json['videoPosterBean'];
    idx = json['idx'];
    shareAdTrack = json['shareAdTrack'];
    favoriteAdTrack = json['favoriteAdTrack'];
    webAdTrack = json['webAdTrack'];
    date = json['date'];
    promotion = json['promotion'];
    descriptionEditor = json['descriptionEditor'];
    collected = json['collected'];
    reallyCollected = json['reallyCollected'];
    played = json['played'];
    if (json['subtitles'] != null) {
      subtitles = <String>[];
      json['subtitles'].forEach((v) {
        subtitles.add(v);
      });
    }
    lastViewTime = json['lastViewTime'];
    playlists = json['playlists'];
    src = json['src'];
    recallSource = json['recallSource'];
    recallSource = json['recall_source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dataType'] = this.dataType;
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['actionUrl'] = this.actionUrl;
    if (this.adTrack != null) {
      data['adTrack'] = this.adTrack.map((v) => v).toList();
    }
    data['shade'] = this.shade;
    data['label'] = this.label;
    if (this.labelList != null) {
      data['labelList'] = this.labelList.map((v) => v).toList();
    }
    data['header'] = this.header;
    data['autoPlay'] = this.autoPlay;
    data['library'] = this.library;
    if (this.tags != null) {
      data['tags'] = this.tags.map((v) => v.toJson()).toList();
    }
    if (this.consumption != null) {
      data['consumption'] = this.consumption.toJson();
    }
    data['resourceType'] = this.resourceType;
    data['slogan'] = this.slogan;
    if (this.provider != null) {
      data['provider'] = this.provider.toJson();
    }
    data['category'] = this.category;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    if (this.cover != null) {
      data['cover'] = this.cover.toJson();
    }
    data['playUrl'] = this.playUrl;
    data['thumbPlayUrl'] = this.thumbPlayUrl;
    data['duration'] = this.duration;
    if (this.webUrl != null) {
      data['webUrl'] = this.webUrl.toJson();
    }
    data['releaseTime'] = this.releaseTime;
    if (this.playInfo != null) {
      data['playInfo'] = this.playInfo.map((v) => v.toJson()).toList();
    }
    data['campaign'] = this.campaign;
    data['waterMarks'] = this.waterMarks;
    data['ad'] = this.ad;
    data['type'] = this.type;
    data['titlePgc'] = this.titlePgc;
    data['descriptionPgc'] = this.descriptionPgc;
    data['remark'] = this.remark;
    data['ifLimitVideo'] = this.ifLimitVideo;
    data['searchWeight'] = this.searchWeight;
    data['brandWebsiteInfo'] = this.brandWebsiteInfo;
    data['videoPosterBean'] = this.videoPosterBean;
    data['idx'] = this.idx;
    data['shareAdTrack'] = this.shareAdTrack;
    data['favoriteAdTrack'] = this.favoriteAdTrack;
    data['webAdTrack'] = this.webAdTrack;
    data['date'] = this.date;
    data['promotion'] = this.promotion;
    data['descriptionEditor'] = this.descriptionEditor;
    data['collected'] = this.collected;
    data['reallyCollected'] = this.reallyCollected;
    data['played'] = this.played;
    if (this.subtitles != null) {
      data['subtitles'] = this.subtitles.map((v) => v).toList();
    }
    data['lastViewTime'] = this.lastViewTime;
    data['playlists'] = this.playlists;
    data['src'] = this.src;
    data['recallSource'] = this.recallSource;
    data['recall_source'] = this.recallSource;
    return data;
  }
}

class Tags {
  late int id;
  late String name;
  late String actionUrl;
  Null adTrack;
  late String desc;
  late String bgPicture;
  late String headerImage;
  late String tagRecType;
  Null childTagList;
  Null childTagIdList;
  late bool haveReward;
  late bool ifNewest;
  Null newestEndTime;
  late int communityIndex;

  Tags({
    required this.id,
    required this.name,
    required this.actionUrl,
    this.adTrack,
    required this.desc,
    required this.bgPicture,
    required this.headerImage,
    required this.tagRecType,
    this.childTagList,
    this.childTagIdList,
    required this.haveReward,
    required this.ifNewest,
    this.newestEndTime,
    required this.communityIndex,
  });

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    actionUrl = json['actionUrl'];
    adTrack = json['adTrack'];
    desc = json['desc'];
    bgPicture = json['bgPicture'];
    headerImage = json['headerImage'];
    tagRecType = json['tagRecType'];
    childTagList = json['childTagList'];
    childTagIdList = json['childTagIdList'];
    haveReward = json['haveReward'];
    ifNewest = json['ifNewest'];
    newestEndTime = json['newestEndTime'];
    communityIndex = json['communityIndex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['actionUrl'] = this.actionUrl;
    data['adTrack'] = this.adTrack;
    data['desc'] = this.desc;
    data['bgPicture'] = this.bgPicture;
    data['headerImage'] = this.headerImage;
    data['tagRecType'] = this.tagRecType;
    data['childTagList'] = this.childTagList;
    data['childTagIdList'] = this.childTagIdList;
    data['haveReward'] = this.haveReward;
    data['ifNewest'] = this.ifNewest;
    data['newestEndTime'] = this.newestEndTime;
    data['communityIndex'] = this.communityIndex;
    return data;
  }
}

class Consumption {
  late int collectionCount;
  late int shareCount;
  late int replyCount;
  late int realCollectionCount;

  Consumption({
    required this.collectionCount,
    required this.shareCount,
    required this.replyCount,
    required this.realCollectionCount,
  });

  Consumption.fromJson(Map<String, dynamic> json) {
    collectionCount = json['collectionCount'];
    shareCount = json['shareCount'];
    replyCount = json['replyCount'];
    realCollectionCount = json['realCollectionCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['collectionCount'] = this.collectionCount;
    data['shareCount'] = this.shareCount;
    data['replyCount'] = this.replyCount;
    data['realCollectionCount'] = this.realCollectionCount;
    return data;
  }
}

class Provider {
  late String name;
  late String alias;
  late String icon;

  Provider({
    required this.name,
    required this.alias,
    required this.icon,
  });

  Provider.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alias = json['alias'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['alias'] = this.alias;
    data['icon'] = this.icon;
    return data;
  }
}

class Author {
  late int id;
  late String icon;
  late String name;
  late String description;
  late String link;
  late int latestReleaseTime;
  late int videoNum;
  Null adTrack;
  late Follow follow;
  late Shield shield;
  late int approvedNotReadyVideoCount;
  late bool ifPgc;
  late int recSort;
  late bool expert;

  Author({
    required this.id,
    required this.icon,
    required this.name,
    required this.description,
    required this.link,
    required this.latestReleaseTime,
    required this.videoNum,
    this.adTrack,
    required this.follow,
    required this.shield,
    required this.approvedNotReadyVideoCount,
    required this.ifPgc,
    required this.recSort,
    required this.expert,
  });

  Author.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
    name = json['name'];
    description = json['description'];
    link = json['link'];
    latestReleaseTime = json['latestReleaseTime'];
    videoNum = json['videoNum'];
    adTrack = json['adTrack'];
    follow = new Follow.fromJson(json['follow']);
    shield = new Shield.fromJson(json['shield']);
    approvedNotReadyVideoCount = json['approvedNotReadyVideoCount'];
    ifPgc = json['ifPgc'];
    recSort = json['recSort'];
    expert = json['expert'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon'] = this.icon;
    data['name'] = this.name;
    data['description'] = this.description;
    data['link'] = this.link;
    data['latestReleaseTime'] = this.latestReleaseTime;
    data['videoNum'] = this.videoNum;
    data['adTrack'] = this.adTrack;
    if (this.follow != null) {
      data['follow'] = this.follow.toJson();
    }
    if (this.shield != null) {
      data['shield'] = this.shield.toJson();
    }
    data['approvedNotReadyVideoCount'] = this.approvedNotReadyVideoCount;
    data['ifPgc'] = this.ifPgc;
    data['recSort'] = this.recSort;
    data['expert'] = this.expert;
    return data;
  }
}

class Follow {
  late String itemType;
  late int itemId;
  late bool followed;

  Follow({
    required this.itemType,
    required this.itemId,
    required this.followed,
  });

  Follow.fromJson(Map<String, dynamic> json) {
    itemType = json['itemType'];
    itemId = json['itemId'];
    followed = json['followed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemType'] = this.itemType;
    data['itemId'] = this.itemId;
    data['followed'] = this.followed;
    return data;
  }
}

class Shield {
  late String itemType;
  late int itemId;
  late bool shielded;

  Shield({
    required this.itemType,
    required this.itemId,
    required this.shielded,
  });

  Shield.fromJson(Map<String, dynamic> json) {
    itemType = json['itemType'];
    itemId = json['itemId'];
    shielded = json['shielded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemType'] = this.itemType;
    data['itemId'] = this.itemId;
    data['shielded'] = this.shielded;
    return data;
  }
}

class Cover {
  late String feed;
  late String detail;
  late String blurred;
  Null sharing;
  late String homepage;

  Cover({
    required this.feed,
    required this.detail,
    required this.blurred,
    this.sharing,
    required this.homepage,
  });

  Cover.fromJson(Map<String, dynamic> json) {
    feed = json['feed'];
    detail = json['detail'];
    blurred = json['blurred'];
    sharing = json['sharing'];
    homepage = json['homepage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feed'] = this.feed;
    data['detail'] = this.detail;
    data['blurred'] = this.blurred;
    data['sharing'] = this.sharing;
    data['homepage'] = this.homepage;
    return data;
  }
}

class WebUrl {
  late String raw;
  late String forWeibo;

  WebUrl({
    required this.raw,
    required this.forWeibo,
  });

  WebUrl.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    forWeibo = json['forWeibo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this.raw;
    data['forWeibo'] = this.forWeibo;
    return data;
  }
}

class PlayInfo {
  late int height;
  late int width;
  late List<UrlList> urlList;
  late String name;
  late String type;
  late String url;

  PlayInfo({
    required this.height,
    required this.width,
    required this.urlList,
    required this.name,
    required this.type,
    required this.url,
  });

  PlayInfo.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    if (json['urlList'] != null) {
      urlList = <UrlList>[];
      json['urlList'].forEach((v) {
        urlList.add(new UrlList.fromJson(v));
      });
    }
    name = json['name'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    if (this.urlList != null) {
      data['urlList'] = this.urlList.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}

class UrlList {
  late String name;
  late String url;
  late int size;

  UrlList({
    required this.name,
    required this.url,
    required this.size,
  });

  UrlList.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    data['size'] = this.size;
    return data;
  }
}
