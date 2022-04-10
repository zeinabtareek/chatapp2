import 'package:chatapp/componant/custom_button.dart';
import 'package:chatapp/componant/home_story.dart';
import 'package:chatapp/componant/indicator.dart';
import 'package:chatapp/componant/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/custom_chat_icon.dart';
import '../../componant/search_text_field.dart';
import '../../constant.dart';
import '../../data.dart';
import '../bus_car_screen/bus_screen.dart';
import '../controller.dart';
import '../post_screen/post_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SearchTextField(onTap: (){Get.to(BusCarScreen());},),
                CustomChatIcon(count: 2,),
              ],
            ),
            UserProfileImg2(),
            Row(
              children: [
                Expanded(
                    child:
            Button(text: 'Write Thing !', size: K.width,)
                ),
              ],
            ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 9,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) =>
              InkWell(
                onTap: (){
                  Get.to(PostScreen());
                },
                child: Container(
              // height: K.height,
                padding: EdgeInsets.symmetric
                  (horizontal: 5.0.w ,vertical: 7.0.h),
              child:  Card(

                  color: K.searchColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: K.mainColor, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(

                    margin: EdgeInsets.symmetric
                      (horizontal: 10.0.w ,vertical: 17.0.h),
                  child:Column(
                  children: [
                    //head
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Container(
                              padding: EdgeInsets.symmetric
                                (horizontal: 2.0.w ,vertical: 2.0.h),
                              height:70.h,
                              width: 70.w,
                              child:  UserAvatar(size: 100, isNav: false,),

                            ),
                            K.sizedBoxW,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('MaooJopez',style: TextStyle(color: K.whiteColor,fontWeight: FontWeight.bold,fontSize: 16.sp),),
                                Text('MaooJopez',style: TextStyle(color: K.grayColor,fontWeight: FontWeight.w400,fontSize: 12.sp),)
                              ],
                            ), ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Image.asset('assets/images/menue.png' ,
                            height: 20.h,
                            width: 18.w,
                            fit: BoxFit.fill,
                          ),
                            K.sizedBoxW,
                          ],
                        ),
                      ],
                    ),
                    K.sizedBoxH,

                    //body
                    Column(
                      children: [
                        SizedBox(
                          width: K.width,
                          child: Text('Les gusta a danieldelax y 4,588 personas máseldelax ',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
                            style: TextStyle(
                              height: 1.6,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: K.grayColor,),),),
                        K.sizedBoxH,
                        SizedBox(
                          width: K.width,
                          child: Text('SACRIFICE | VIRUS this photomanipulation inspired in the virus ',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
                            style: TextStyle(
                              height: 1.6,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: K.whiteColor,),),),
                        K.sizedBoxH,
                        SizedBox(
                          width: K.width,
                          child: Text('Ver los 500 comentarios',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
                            style: TextStyle(
                              height: 1,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: K.grayColor,),),),K.sizedBoxH,
                        SizedBox(
                          width: K.width,
                          child: Text('Perla_Pipol Esta edición está super genial, que pro!!',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
                            style: TextStyle(
                              height: 1,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: K.whiteColor,),),),
                      ],
                    ),
                    K.sizedBoxH,
                    Stack(
                      children: [
                     Container(
                            width: K.width,
                            child:Card(
                              color: K.searchColor,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: K.mainColor, width: .2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                  image: AssetImage('assets/images/covid.png',),fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                           Positioned(
                              bottom:5,
                              left: 0,
                              right: 0,

                              child:  Container(

                                margin: EdgeInsets.symmetric(
                                    horizontal: 20.0.w, vertical: 10.0.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0.w, vertical: 10.0.h),
                                width: K.width *1,
                                height: 47.h,
                                decoration: BoxDecoration(
                                  color: K.whiteColor,
                                  borderRadius: BorderRadius.circular(29),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row( children:   [
                                      GetBuilder<HomePageController>(
                                          init: HomePageController(),
                                          builder:(controller){
                                            return   IconButton(
                                              onPressed: () {
                                                controller.isChecked();},
                                              icon:
                                              controller.check.value !=false?
                                              const Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              )
                                                  : const Icon(
                                                Icons.favorite_border_outlined,
                                                color: K.grayColor,
                                              ),
                                            );}
                                      ),
                                      Text('247'),
                                    ],
                                    ),
                                    Row(
                                      children:   [
                                        Image.asset(
                                          'assets/images/chatPost.png',
                                        ),
                                        SizedBox(width: 10,),
                                        Text('247'),
                                      ],
                                    ),  Row(
                                      children:   [
                                        Image.asset(
                                          'assets/images/homearrow.png',
                                        ),
                                        SizedBox(width: 10,),
                                        Text('247'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      ],
                    )
                  ],
                ),
              )
            )
          ),
        )
        )
          ],
        ),
      ),
    ));
  }
}



