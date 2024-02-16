import 'package:disney_plus/constant/app_colors.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:disney_plus/features/movies/data/movies.dart';
import 'package:disney_plus/features/movies/presentation/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:disney_plus/features/movies/presentation/home_app_bar/home_app_bar.dart';
import 'package:disney_plus/features/movies/presentation/home_screen/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int activePage = 1;
  final _pageController = PageController(initialPage: 1, viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: const DisneyAppBar(),
      backgroundColor: AppColors.kBackgroundColor,
      body: ListView(
        children: [
          const Gap(Sizes.p10),
          CarouselSlider(
            images: carouselImages, 
            activePage: activePage, 
            controller: _pageController, 
            onPageChanged: (index) {
              setState(() => activePage = index);
              debugPrint('Active carousel index: $index');
            },
          ),
          const Gap(Sizes.p20),
        ],
      ),
      bottomNavigationBar: const DisneyPlusBottomNavigationBar(),
    );
  }
}