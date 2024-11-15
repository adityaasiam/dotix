import 'package:dotix/avatar_selection_screen.dart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dotix/splash_screen.dart.dart';
import 'package:get/get.dart';

import 'home_screen.dart';
import 'login_screen.dart.dart';
import 'onboarding_screen.dart.dart';// Your app logic

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/onboarding', page: () => OnboardingScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/avatar', page: () => const AvatarSelectionScreen()),
        GetPage(name: '/home', page: () =>  Homescreen()),
      ],
    );
  }
}


