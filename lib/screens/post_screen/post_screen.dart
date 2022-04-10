import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/home_story.dart';
import '../../componant/indicatr.dart';
import '../../constant.dart';
import '../controller.dart';
import 'controller.dart';

class PostScreen extends StatelessWidget {
  final _controller = Get.put(PostDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2.4,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _controller.boardController,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) => Container(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/32.png',
                                ),
                                height: K.height,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          itemCount: 6,
                          onPageChanged: (int index) {
                            _controller.isFirstFunction(index);
                            _controller.isLastFunction(index);
                          },
                        ),
                        Indicator(
                          pageController: _controller.boardController,
                          count: 6,
                        ),
                        Positioned(
                            top: 60.h,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_back),
                                  color: K.whiteColor,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.menu),
                                  color: K.whiteColor,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: K.KpostBackground,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GetBuilder<HomePageController>(
                                init: HomePageController(),
                                builder: (controller) {
                                  // final x=controller.favoriteList.firstWhere((element) => element.id==productModel!.key,orElse: ()=>null);
                                  return Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          controller.isChecked();
                                          // controller.addToFavorite(favouriteModel);
                                        },
                                        icon: controller.check.value
                                            ? const Icon(
                                          Icons.favorite,
                                          color: K.mainColor,
                                        )
                                            : Icon(
                                          Icons.favorite,
                                          color: K.whiteColor,
                                          size: 30.sp,
                                        ),
                                      ),
                                      const Text(
                                        '247',
                                        style: TextStyle(
                                          color: K.whiteColor,
                                        ),
                                      )
                                    ],
                                  );
                                }),
                            K.sizedBoxW,
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/chatPost.png',
                                    height: 30.h,
                                    width: 30.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                const Text(
                                  '57',
                                  style: TextStyle(
                                    color: K.whiteColor,
                                  ),
                                )
                              ],
                            ),
                            K.sizedBoxW,
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/arrow.png',
                                    height: 25.h,
                                    width: 25.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                const Text(
                                  '33',
                                  style: TextStyle(
                                    color: K.whiteColor,
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                      ListView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.0.w, vertical: 20.0.h),
                                width: K.width,
                                // height: 150.h,
                                decoration: BoxDecoration(
                                  color: index != 0
                                      ? K.KFirstPostColor
                                      : K.KpostBackground,
                                  border: Border(
                                    bottom: BorderSide(
                                        color: K.whiteColor.withOpacity(.2),
                                        width: 1.0),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            UserAvatar(
                                              size: 50,
                                              isNav: index != 0 ? true : false,
                                            ),
                                            Container(
                                                child: index != 0
                                                    ? Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          Icons.favorite,
                                                          size: 20.sp,
                                                          color: Colors.red,
                                                        )),
                                                    Text(
                                                      '57',
                                                      style: TextStyle(
                                                          color: K.whiteColor,
                                                          fontSize: 12.sp),
                                                    )
                                                  ],
                                                )
                                                    : Text(''))
                                          ],
                                        ),
                                        // K.sizedBoxW,

                                        Container(
                                            padding: EdgeInsets.only(left: 15.sp),
                                            width: 255.w,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                //
                                                Text(
                                                  'Michael Bruno',
                                                  style: TextStyle(
                                                      color:index == 0
                                                          ?  K.whiteColor:K.KPostTextColor,
                                                      fontSize: index == 0
                                                          ? 20.sp:16.sp,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                index == 0?  Text(
                                                  '#Photoshoot #Smile #Beautiful #Fashion',
                                                  style: TextStyle(
                                                      color: K.PosthashtagColor,
                                                      fontSize: 12.sp,
                                                      fontWeight: FontWeight.w500),
                                                ):Text('', style: TextStyle(fontSize: 1.sp, ),),

                                                SizedBox(
                                                  width: 271,
                                                  // height: 40.h,
                                                  child: Text(
                                                    'Cras gravida bibendum dolor eu varius Ipsum fermentum velit nisl, eget vehicula.',
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 6,
                                                    style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 12.sp,
                                                      fontWeight: FontWeight.w600,
                                                      color: K.KPostTextColor,
                                                    ),
                                                  ),
                                                ),
                                                //
                                              ],
                                            ))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '8h ago',
                                          style: TextStyle(
                                              color: K.whiteColor,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                              );
                          })
                    ],
                  ),

                ]),
          ),
        ],
      )

    );
  }
}
