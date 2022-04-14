import 'package:chatapp/screens/controller.dart';
import 'package:chatapp/screens/profile_screen/controller.dart';
import 'package:get/get.dart';


class Binding extends Bindings {
  @override
  void dependencies (){
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => ProfileController());



  }
}