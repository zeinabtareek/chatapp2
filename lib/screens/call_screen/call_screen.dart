import 'dart:math';
import 'package:chatapp/componant/animated_componant/data.dart';
import 'package:chatapp/componant/animated_componant/dot.dart';
import 'package:chatapp/componant/call_fixed_row.dart';
import 'package:chatapp/model/splash_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/animated_componant/painter.dart';
import '../../componant/disable_phone_button.dart';
import '../../componant/home_story.dart';
import '../../constant.dart';


class CallingScreen extends StatefulWidget {
  const CallingScreen({Key? key}) : super(key: key);

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  // int _currentIndex = 0;
  // final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric
                (horizontal: 30.0.w ,vertical: 30.0.h),
              height: K.height,
              width: K.width,
              color: K.splashScreenColor,
              child:Column(
                children: [

                  CallingRow(),
                  SizedBox(
                    height: 96.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UserAvatar(
                        size: 120,
                        isNav: false,
                        image: 'assets/images/user_image.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      Text('صديق',style: TextStyle(
                          color: K.splashTypingColor,
                          fontSize: 25.sp
                      ),),
                      Text('Contacting...',style: TextStyle(
                          color: K.whiteColor,
                          fontSize: 16.sp
                      ),),

                    ],
                  ),
                  SizedBox(
                    height: 80.h,),
                  const DisablePhoneButton(),
                ],
              )
          ),
        )
    );

  }
}


