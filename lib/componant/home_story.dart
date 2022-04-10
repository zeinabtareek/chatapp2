import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class UserAvatar extends StatelessWidget {
  int size=100;
  bool? isNav=false;
  String ?image;
    UserAvatar({
    required this.size ,
      required this.isNav ,
      required this.image,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
          height: size.h,
          width: size.w,
          child: CircleAvatar(
            radius: 100.0,
            backgroundColor: K.mainColor.withOpacity(.8),
            child: Padding(
              padding:isNav!=true? EdgeInsets.symmetric
                (horizontal: 1.0.w ,vertical: 1.0.h):
              EdgeInsets.symmetric
                (horizontal: 0.0.w ,vertical: 0.0.h),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(100.0),
                child:Image(image: AssetImage('assets/images/user_image.png',),
                  height: 120.h,
                    width: 120.w,
                    fit: BoxFit.cover,
                  // ),
                ))
              ),
              ),


        );

  }
}
