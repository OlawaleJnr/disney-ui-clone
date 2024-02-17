import 'package:disney_plus/components/card_top_studios_logo.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class TopMovieStudios extends StatelessWidget {
  const TopMovieStudios({ 
    Key? key,
    required this.images
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: Sizes.p70,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) => CardTopStudiosLogo(logo: images[index])
      ),
    );
  }
}