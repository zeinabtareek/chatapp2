import 'package:chatapp/componant/custom_button.dart';
import 'package:chatapp/componant/home_story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../componant/custom_chat_icon.dart';
import '../../componant/search_text_field.dart';
import '../../constant.dart';
import '../../data.dart';
import 'controller.dart';

class BusCarScreen extends StatelessWidget {
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
                    SearchTextField(onTap: (){},),
                    CustomChatIcon(count: 2, onTap: () {  },),
                  ],
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,

            Padding(padding: EdgeInsets.symmetric
              (horizontal: 19.0.w ,vertical: 2.0.h),
              child:   Container(
                  height: 124.h,
                  // width: 90.w,
                  width: K.width,

                  child:  ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  // padding: EdgeInsets.symmetric
                  //   (horizontal: 2.0.w ,vertical: 8.0.h),
                  itemCount: colors.length,
                  itemBuilder: (ctx, index) =>
                      GetBuilder<BusCarController>(
                          init: BusCarController(),
                          builder:(controller) {
                            // final x=controller.favoriteList.firstWhere((element) => element.id==productModel!.key,orElse: ()=>null);
                            return
                              Stack(
                                children: [   Container(
                                  height: 124.h,
                                  width: 104.w,
                                  margin: EdgeInsets.symmetric
                                    (horizontal: 8.0.w, ),
                                  decoration:BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius:   BorderRadius.circular(10)
                                  ),
                                  child:

                                      Container(
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                            borderRadius:BorderRadius.circular(20),
                                            color:colors[index]
                                        ),
                                      ),),
                                  Positioned(
                                    left: 0,
                                      right: 0,
                                       bottom: 30.h,
                                      child: Column(
                                    children: [
                                      Image.asset(ImageIcons[index],height: 30.h,fit: BoxFit.cover,),
                                      K.sizedBoxH,
                                      // K.sizedBoxH,
                                      Text(data[index],style: TextStyle(
                                        color: K.whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp
                                      ),)
                                    ],

                                  ))

                                ]
                                  );
                          }
                        ),
                      ),
                   ),
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                Button(text: 'Add Product!', size: K.width),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
Padding(padding: EdgeInsets.symmetric
  (horizontal: 8.0.w ,vertical: 2.0.h),

child:  Container(
    height: K.height,
    child: StaggeredGridView.countBuilder(
      crossAxisCount: 3,
      crossAxisSpacing:8,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) =>
          Image( image: AssetImage(Images[index].toString(),)as ImageProvider,
            height: K.height,
            width: K.width,
            fit: BoxFit.cover,

          ),
      staggeredTileBuilder: (int index) =>index % 7 ==0?
      new StaggeredTile.count(2,  2 ):
      new StaggeredTile.count(1,  1 ),

      mainAxisSpacing: 4.0,
    )
)
)

              ],
            ),
          ),
        )
    );
  }
}
