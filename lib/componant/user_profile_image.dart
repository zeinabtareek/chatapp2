import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';
import '../data.dart';
import 'home_story.dart';



class UserProfileImg2 extends StatelessWidget {


String imgURL='109943543_34200.png';


   UserProfileImg2({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: MediaQuery.of(context).size.width,
        height: 155.h,
        color: Colors.transparent,
        child: ListView.builder(
          itemCount: 10,
            physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16
            ),
          itemBuilder: (context, index) {
            return Column(
                children: [
              UserAvatar(size: 100, isNav: false,),
                  K.sizedBoxH,
                  const Text('Perla_pipol',style: TextStyle(
                      color: K.whiteColor
                  ),
                  ),
                ],
            );
          }
        )
    );




  }
}

