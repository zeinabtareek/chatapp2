import 'package:chatapp/componant/call_fixed_row.dart';
import 'package:chatapp/componant/chat/chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../../data.dart';

class ChatScreen extends StatelessWidget {
   final String  title='title';

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //   // appBar: DefaultAppBar(
    //     title: Text(
    //       title,
    //       // style: context.textTheme.headline6,
    //     ),
    //   ),
    //   body: Stack(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
    //         child:
    //         // controller.obx(
    //         //       (state) =>
    //                   ListView.builder(
    //             // controller: controller.scrollController,
    //             itemCount: 18,
    //             shrinkWrap: true,
    //             padding: EdgeInsets.all(10.sp),
    //             itemBuilder: (BuildContext context, int index) {
    //               // final Chat data = state[index];
    //               // final UserModel _user =
    //               // Get.find<UserController>().list.firstWhere(
    //               //       (element) => element.id == data.uidFrom,
    //               //   orElse: () => null,
    //               // );
    //               // String _photoUrl = _user?.photoURL;
    //               // String _userName = _user?.displayName;
    //               // bool _isMe = data.uidFrom == AuthService.to.currentUser.uid;
    //               return ChatTile(
    //                 isMe: true,
    //                 id: 'data.id',
    //                 imageURL:  'assets/images/user_image.png',
    //
    //                 messege:  'massege',
    //                 name:   'user',
    //                 sent:   '15',
    //               );
    //             },
    //
    //
    //         ),
    //       ),
    //       // Positioned(
    //       //   width: K.width,
    //       //   bottom: 0,
    //         // child: ChatScreenInput(
    //         //   controller: controller,
    //         // ),
    //       // ),
    //     ],
    //   ),
    // );
    return Scaffold(
      backgroundColor: K.whiteColor,

        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              color: K.whiteColor,
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,),
                  ),
                  SizedBox(width: 2,),
                  const CircleAvatar(
                    backgroundImage: NetworkImage("<https://randomuser.me/api/portraits/men/5.jpg>"),
                    maxRadius: 20,
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Kriss Benwat",style: const TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                        SizedBox(height: 6,),
                        Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                      ],
                    ),
                  ),
                  Icon(Icons.settings,color: Colors.black54,),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
         children: <Widget>[
           ListView.builder(
             itemCount: messages.length,
             shrinkWrap: true,
             padding: EdgeInsets.only(top: 10,bottom: 10),
             physics: const NeverScrollableScrollPhysics(),
             itemBuilder: (context, index){
               return Container(
                 padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                 child: Align(
                   alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:K.mainColor),
                     ),
                     padding: EdgeInsets.all(16),
                     child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                   ),
                 ),
               );
             },
           ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: K.grayColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 20, ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Write message...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    FloatingActionButton(
                      onPressed: (){},
                      child: Icon(Icons.send,color: Colors.white,size: 18,),
                      backgroundColor: K.mainColor,
                      elevation: 0,
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
    );
  }
}