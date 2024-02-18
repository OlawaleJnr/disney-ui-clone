import 'package:disney_plus/components/custom_network_image.dart';
import 'package:flutter/material.dart';

class MovieCover extends StatelessWidget {
  const MovieCover({ Key? key, required this.image }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context){
    return Container(
      width: 120.0,
      margin: const EdgeInsets.only(right: 15.0),
      child: CustomNetworkImage(imageUrl: image)
    );
  }
}