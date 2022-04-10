
import 'package:chatapp/screens/animated_screens/animated_splash.dart';
import 'package:chatapp/screens/home/home_screen.dart';
import 'package:chatapp/screens/home_navigation_bar/home.dart';
import 'package:get/get.dart';

import 'app_route.dart';

class AppScreens {
  static final screens = [

    GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.splashScreen, page: () => const OnboardingScreen()),
  ];
}
