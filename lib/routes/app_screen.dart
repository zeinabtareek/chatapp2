
import 'package:chatapp/screens/animated_screens/animated_splash.dart';
import 'package:chatapp/screens/first_splash_screen/first_splash_screen.dart';
import 'package:chatapp/screens/home/home_screen.dart';
import 'package:chatapp/screens/home_navigation_bar/home.dart';
import 'package:chatapp/screens/login_screen/login_screen.dart';
import 'package:chatapp/screens/profile_screen/profile_screen.dart';
import 'package:chatapp/screens/register_screen/register_screen.dart';
import 'package:get/get.dart';

import 'app_route.dart';

class AppScreens {
  static final screens = [
     GetPage(name: AppRoutes.homeNave, page: () => const Home()),
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () => const RegisterScreen()),

     GetPage(name: AppRoutes.profileScreen, page: () =>   ProfileScreen()),

    GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.onboardScreen, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.splashScreen, page: () =>   SplashScreen()),
  ];
}
