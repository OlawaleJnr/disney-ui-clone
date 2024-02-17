import 'package:disney_plus/components/custom_network_image.dart';
import 'package:disney_plus/constant/app_colors.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class CardTopStudiosLogo extends StatelessWidget {
  const CardTopStudiosLogo({ 
    Key? key,
    required this.logo
  }) : super(key: key);

  final String logo;
  
  @override
  Widget build(BuildContext context){
    return Container(
      width: Sizes.p70,
      height: Sizes.p70,
      margin: const EdgeInsets.all(Sizes.p4),
      child: Container(
        padding: const EdgeInsets.all(Sizes.p4),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(Sizes.p10),
          border: Border.all(color: Colors.white54, width: 0.5),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.startColor, AppColors.endColor]
          ),
        ),
        child: CustomNetworkImage(imageUrl: logo, fit: BoxFit.contain)
      ),
    );
  }
}