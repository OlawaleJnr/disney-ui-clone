import 'package:disney_plus/components/custom_network_image.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({ 
    Key? key,
    required this.images,
    required this.activePage,
    required this.controller,
    required this.onPageChanged
  }) : super(key: key);

  final int activePage;
  final List<String> images;
  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        pageSnapping: true,
        controller: controller,
        itemCount: images.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          bool isCenterImage = index == activePage;
          return renderImage(images[index], isCenterImage);
        }
      ),
    );
  }
}

AnimatedContainer renderImage(String image, bool active) {
  double margin = active ? 0 : 20;
  return AnimatedContainer(
    curve: Curves.easeInOutCubic,
    duration: const Duration(milliseconds: 500),
    margin: EdgeInsets.symmetric(horizontal: 6, vertical: margin),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.p4),
      child: CustomNetworkImage(imageUrl: image),
    ),
  );
}