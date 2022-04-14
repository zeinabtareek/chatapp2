import 'package:chatapp/routes/app_route.dart';
import 'package:chatapp/routes/app_screen.dart';
import 'package:chatapp/screens/chat_screen/chat_screen.dart';
import 'package:chatapp/screens/conversation_screen/conversation_screen.dart';
import 'package:chatapp/screens/home/home_screen.dart';
 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'constant.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VisualDensity.adaptivePlatformDensity;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return  MediaQuery(
      data: const MediaQueryData(
      ),
      child:ScreenUtilInit(
        designSize: const Size (428,926),
        builder :()=> GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: AppBarTheme(backgroundColor:K.kBackGroundColor),
              scaffoldBackgroundColor:K.kBackGroundColor,
          ),
                 initialRoute: AppRoutes.splashScreen,
              getPages: AppScreens.screens,
        ),
      ),
    );
  }
}
