import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;

  const AppCachedNetworkImage({
    Key? key,
    required this.imageUrl,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: 'https://gallery.prod1.webant.ru/media/' + imageUrl,
      errorWidget: (context, url, error) {
        return Image.asset('assets/images/no_internet_connection.png');
      },
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
