import 'package:chatapp/screens/animated_screens/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.transparent,
        splash: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                'assets/images/first.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Center(
                    child: Text(
                  "B A S A M ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: K.whiteColor,
                    fontSize: 30,
                    fontFamily: 'Poppins-Bold',
                  ),
                )),
                Center(
                    child: Text(
                  "APP ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: K.whiteColor,
                    fontSize: 40,
                    fontFamily: 'Poppins-Bold',
                  ),
                )),
              ],
            ),
          ],
        ),
        nextScreen: const OnboardingScreen(),
        splashIconSize: 250,
        duration: 4000,
        splashTransition: SplashTransition.scaleTransition,
        animationDuration: const Duration(seconds: 1),
      ),
    );
  }
}
