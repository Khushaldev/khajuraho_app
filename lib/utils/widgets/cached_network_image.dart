import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.url,
    required this.placeholder,
    required this.errorWidget,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  final String url;
  final Widget placeholder;
  final Widget errorWidget;
  final BoxFit fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (url.startsWith('http') || url.startsWith('https')) {
      return CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        fit: fit,
        placeholder: (context, url) => placeholder,
        errorWidget: (context, url, error) => errorWidget,
      );
    } else {
      return placeholder;
    }
  }
}
