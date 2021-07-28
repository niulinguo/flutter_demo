import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

Widget cacheImage(
  String url, {
  double? width,
  double? height,
  BorderRadius? borderRadius,
  BoxFit fit = BoxFit.cover,
  BoxShape shape = BoxShape.rectangle,
  bool clearMemoryCacheWhenDispose = false,
}) {
  return ExtendedImage.network(
    url,
    shape: shape,
    height: height,
    width: width,
    fit: fit,
    borderRadius: borderRadius,
    clearMemoryCacheIfFailed: clearMemoryCacheWhenDispose,
  );
}

ImageProvider cachedNetworkImageProvider(String url) {
  return ExtendedNetworkImageProvider(url);
}
