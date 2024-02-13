import 'package:disney_plus/components/custom_image.dart';
import 'package:disney_plus/constant/app_images.dart';
import 'package:disney_plus/constant/app_sizes.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: disneyAppBar(),
      body: const Center(),
      backgroundColor: const Color.fromARGB(30, 34, 49, 255)
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
