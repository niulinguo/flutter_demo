import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/http/model/feed.dart';
import 'package:flutter_demo/eyes/utils/cache_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerWidget extends StatelessWidget {
  final List<Item> dataList;

  const BannerWidget({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: cachedNetworkImageProvider(
                  dataList[index].data.cover!.feed,
                ),
                fit: BoxFit.cover,
              )),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width - 30,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                decoration: BoxDecoration(color: Colors.black12),
                child: Text(
                  dataList[index].data.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        );
      },
      onTap: (index) {
        print('点击了banner图 $index');
      },
      itemCount: dataList.length,
      pagination: SwiperPagination(
        alignment: Alignment.bottomRight,
        builder: DotSwiperPaginationBuilder(
          size: 8,
          activeSize: 8,
          activeColor: Colors.white,
          color: Colors.white24,
        ),
      ),
    );
  }
}
