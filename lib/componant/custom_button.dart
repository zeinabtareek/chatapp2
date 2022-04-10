import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class Button extends StatelessWidget {
  String text;
  double size;
    Button({
    required this.text,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: K.width,
      margin: EdgeInsets.symmetric
        (horizontal: 2.0.w ,vertical: 2.0.h),
      child:
      RaisedButton(

        onPressed: () {},
        padding: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
        child: Ink(
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [K.secmainColor, K.mainColor],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(28.0)
          ),
          child: Container(

            width: size,
            height: 60.h,
            // constraints: BoxConstraints(maxWidth: 280.0, minHeight: 52.0),
            alignment: Alignment.center,
            child:   Text(
              text,
              textAlign: TextAlign.center,
              style:   TextStyle(fontSize: 18.sp,
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),);
  }
}
