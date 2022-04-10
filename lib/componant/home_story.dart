import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class UserAvatar extends StatelessWidget {
  int size=100;
  bool? isNav=false;
    UserAvatar({
    required this.size ,
      required this.isNav ,

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
                (horizontal: 7.0.w ,vertical: 4.0.h):
              EdgeInsets.symmetric
                (horizontal: 0.0.w ,vertical: 0.0.h),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(100.0),
                child:
                Image.network(
                  "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
                  ,height: 100.h,
                  width: 100.w,

                  fit: BoxFit.cover,
                ),
              ),
            ),),

        );

  }
}
