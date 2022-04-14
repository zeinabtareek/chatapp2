import 'dart:math';
import 'package:chatapp/componant/animated_componant/data.dart';
import 'package:chatapp/componant/animated_componant/dot.dart';
import 'package:chatapp/componant/custom_button.dart';
import 'package:chatapp/componant/loging_componant/login_custom_text.dart';
import 'package:chatapp/model/splash_model.dart';
import 'package:chatapp/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../constant.dart';

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
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Flexible(
            child: PageView.builder(
              controller: _pageController,
              itemCount: tabs.length,
              itemBuilder: (BuildContext context, int index) {
                OnboardingModel tab = tabs[index];
                return Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Image(
                        image: AssetImage(
                          tabs[_currentIndex].image,
                        ),
                        key: Key('${Random().nextInt(999999999)}'),
                        width: K.width,
                        fit: BoxFit.cover,
                        height: K.height,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Positioned(
                      // bottom: 0,
                      bottom: -18,
                      child: Container(
                        width: K.width,
                        height: 371.h,
                        decoration: BoxDecoration(
                            color: K.splashStackColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  LoginCustomText(text: tab.title.toString(),size: 28,),
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
                                      size: K.width,
                                      text: 'البدء',
                                      isSplash: true,
                                      onPressed: () {
                                        Get.offAll(const LoginScreen());
                                      },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  for (int index = 0;
                                      index < tabs.length;
                                      index++)
                                    DotIndicator(
                                        isSelected: index == _currentIndex),
                                ],
                              ),
                              const SizedBox(height: 75)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              onPageChanged: (value) {
                _currentIndex = value;
                setState(() {});
              },
            ),
          ),

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
        ));
  }
}

