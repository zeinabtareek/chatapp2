import 'package:chatapp/routes/app_route.dart';
import 'package:chatapp/screens/animated_screens/animated_splash.dart';
 import 'package:chatapp/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
    image :DecorationImage(
    image:AssetImage('assets/images/first.jpeg'),fit: BoxFit.cover
    )
    ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body:AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
        splash:
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

    ) ,
          nextScreen:  const OnboardingScreen(),
     splashIconSize: 250,
    duration: 4000,
    splashTransition: SplashTransition.scaleTransition,
    animationDuration: const Duration(seconds: 1),
    ),

    )


    );}}