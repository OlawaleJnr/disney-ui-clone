import 'package:disney_plus/components/custom_image.dart';
import 'package:disney_plus/components/custom_network_image.dart';
import 'package:disney_plus/constant/app_images.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:disney_plus/features/movies/data/movies.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'en_NG';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Disney+',
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int activePage = 1;
  final _pageController = PageController(initialPage: 1, viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: disneyAppBar(),
      backgroundColor: const Color.fromARGB(30, 34, 49, 255),
      body: SizedBox(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: PageView.builder(
          pageSnapping: true,
          itemCount: images.length,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => activePage = index);
            debugPrint('Active carousel index: $index');
          },
          itemBuilder: (context, index) {
            bool isCenterImage = index == activePage;
            return showImage(images[index], isCenterImage);
          }
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}

AppBar disneyAppBar() {
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

AnimatedContainer showImage(String image, bool active) {
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

Widget bottomNavigationBar() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const Divider(color: Colors.white12, height: 0.5, thickness: 0.5),
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: Sizes.p16,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.cyan,
              ),
            ),
            label: 'Profile',
          ),
        ],
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white.withOpacity(0.5),
      ),
    ],
  );
}
