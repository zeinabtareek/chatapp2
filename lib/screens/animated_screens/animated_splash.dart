import 'dart:math';
import 'package:chatapp/componant/animated_componant/data.dart';
import 'package:chatapp/componant/animated_componant/dot.dart';
import 'package:chatapp/componant/custom_button.dart';
import 'package:chatapp/model/splash_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/animated_componant/painter.dart';
import '../../componant/disable_phone_button.dart';
import '../../componant/home_story.dart';
import '../../constant.dart';
import '../call_screen/call_screen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child:
          Stack(
            children: [
              CallingScreen(),
              //       ],
              //
              // ),

              Positioned(
                // bottom: 0,
                bottom: 1,
                child: Container(
                  width: K.width,
                  height: 371.h,
                  decoration: BoxDecoration(
                      color: K.splashStackColor,
                      borderRadius: new BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Flexible(
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: tabs.length,
                          itemBuilder: (BuildContext context, int index) {
                            OnboardingModel tab = tabs[index];
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                              Container(
                                padding: EdgeInsets.symmetric
                                  (horizontal: 2.0.w ,vertical: 15.0.h),
                              width: 200.w,
                              // height: 270,

                              child: Text(
                                  tab.title.toString(),
                                  style: const TextStyle(
                                    fontSize: 28.0,
                                    color: K.splashTypingColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textDirection: TextDirection.rtl,
                                  // overflow: TextOverflow.ellipsis,
                                ),
                                ),
                                  SizedBox(height: 5.h),
                                Text(
                                  tab.subtitle.toString(),
                                  style: const TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white70,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                                Button(
                                  size: 58, text: 'البدا',),
                              ],
                            );
                          },
                          onPageChanged: (value) {
                            _currentIndex = value;
                            setState(() {});
                          },
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int index = 0; index < tabs.length; index++)
                            DotIndicator(isSelected: index == _currentIndex),
                        ],
                      ),
                      const SizedBox(height: 75)
                    ],
                  ),
                ),
              ),
            ],
          )

        // Container(
        //     padding: EdgeInsets.symmetric
        //       (horizontal: 30.0.w ,vertical: 30.0.h),
        //     height: K.height,
        //     width: K.width,
        //     color: K.splashScreenColor,
        //     child:Column(
        //       children: [
        //
        //             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //
        //                   children: [
        //                     Container(
        //                   child:  Padding(
        //                     padding: EdgeInsets.only
        //                       (left: 5.0.w ,top:  3.0.h,bottom:  3.0.h),
        //                    child: Icon(Icons.arrow_back_ios ,color: Colors.black,size: 21.sp,),),
        //                       decoration: BoxDecoration(
        //                           color: K.whiteColor,
        //                           borderRadius: new BorderRadius.circular(100)
        //                     )
        //                     ), Container(
        //                   child:   Image.asset('assets/images/AddContact.png' ,),),
        //           ],
        //         ),
        //           SizedBox(
        //             height: 96.h,
        //           ),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               UserAvatar(
        //                 size: 120,
        //                 isNav: false,
        //                 image: 'assets/images/user_image.png',
        //               ),
        //             ],
        //           ),
        //         SizedBox(
        //           height: 16.h,),
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children:   [
        //            Text('صديق',style: TextStyle(
        //              color: K.splashTypingColor,
        //              fontSize: 25.sp
        //            ),),
        //             Text('Contacting...',style: TextStyle(
        //              color: K.whiteColor,
        //              fontSize: 16.sp
        //            ),),
        //
        //           ],
        //         ),
        //         SizedBox(
        //           height: 80.h,),
        //         DisablePhoneButton(),
        //         ],
        //     )
        // ),
      )
    );


  }
}

