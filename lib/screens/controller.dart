import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{

  final check = false.obs;


  isChecked(){
    check.value = !check.value;

  }
}