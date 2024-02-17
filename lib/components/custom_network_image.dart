import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    Key? key, 
    this.placeholder,
    required this.imageUrl,
    this.fit = BoxFit.cover
  }) : super(key: key);

  final BoxFit fit;
  final String imageUrl;
  final Widget? placeholder;


  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      placeholder: (context, url) => placeholder ?? const CircularProgressIndicator(),
    );
  }
}