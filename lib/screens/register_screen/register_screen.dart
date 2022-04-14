import 'package:chatapp/componant/custom_button.dart';
import 'package:chatapp/componant/indicatr.dart';
import 'package:chatapp/componant/loging_componant/custom_text_field.dart';
import 'package:chatapp/componant/loging_componant/login_custom_text.dart';
import 'package:chatapp/componant/loging_componant/login_rich_text.dart';
import 'package:chatapp/componant/loging_componant/rich_text.dart';
import 'package:chatapp/componant/loging_componant/text_field.dart';
import 'package:chatapp/routes/app_route.dart';
import 'package:chatapp/screens/home_navigation_bar/home.dart';
import 'package:chatapp/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _controller = Get.put(LoginController());
    return Scaffold(
        backgroundColor: K.splashScreenColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 100.0.h),
                  width: Get.width,
                  child: CustomPaint(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'B A S A M ',
                          style: TextStyle(
                              color: K.whiteColor,
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'APP ',
                          style: TextStyle(
                              color: K.whiteColor,
                              fontSize: 55.sp,
                              fontWeight: FontWeight.bold),
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                  ),
                ),
                LoginCustomText(
                  text: 'Sign Up ',
                  size: 30,
                ),
                LoginCustomText(
                  text: 'Create a new account ',
                  size: 18,
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                CustomTextField(
                  icon: Icon(Icons.supervisor_account_rounded),
                  label: 'First Name',
                  hint: 'First Name',
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                CustomTextField(
                  icon: Icon(Icons.supervisor_account_rounded),
                  label: 'Second Name',
                  hint: 'Second Name',
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                CustomTextField(
                  icon: Icon(Icons.email),
                  label: 'Email ',
                  hint: 'Email ',
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                CustomTextField(
                  icon: Icon(Icons.password_outlined),
                  label: 'Password',
                  hint: 'Password',
                  isPassword: true,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: K.splashScreenColor,
                        fontFamily: "Poppins SemiBold",
                      ),
                    ),
                  ),
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                Button(
                  size: K.width,
                  text: 'Register',
                  isSplash: true,
                  onPressed: () {
                    Get.offAll(Home());
                  },
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                FixedRichText(
                  key: key,
                  leftLabel: "Already have an account ?",
                  rightLabel: " Login",
                  onTab: () {
                    Get.toNamed(AppRoutes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        )

        // Obx(() => _controller.check.value == true ? Indicator() : Container()),
        );
  }

  getBoxShadow() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: K.splashStackColor.withOpacity(.5),
        border: Border.all(color: K.whiteColor.withOpacity(.3)));
  }

  getInoutDecoration(hint, icon) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: K.whiteColor.withOpacity(.3)),
      ),
      icon: Container(
        margin: const EdgeInsets.only(
          left: 20,
        ),
        width: 10,
        height: 10,
        child: icon,
      ),
      hintText: hint,
      hintStyle: TextStyle(fontSize: 20.0, color: K.whiteColor.withOpacity(.3)),
      labelStyle: TextStyle(color: Colors.white),
      contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
    );
  }
}
