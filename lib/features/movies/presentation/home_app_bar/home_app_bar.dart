import 'package:disney_plus/components/custom_image.dart';
import 'package:disney_plus/constant/app_images.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class DisneyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DisneyAppBar({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const SizedBox(
        height: Sizes.p56,
        child: CustomImage(imageUrl: AppImage.disneyLogo)
      ),
      toolbarHeight: Sizes.kToolbarHeight,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(Sizes.p56);
}