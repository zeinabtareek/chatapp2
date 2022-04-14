import 'package:chatapp/screens/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_story.dart';

class ConversationList extends StatelessWidget{
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  ConversationList({
    required this.name,required this.messageText,required this.imageUrl,required this.time,required this.isMessageRead});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ChatScreen());
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  UserAvatar(
                    isNav: true,
                    image: imageUrl,
                    size: 70,),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(name, style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),
                          Text( messageText,style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight:  isMessageRead?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text( time,style: TextStyle(fontSize: 12,fontWeight:  isMessageRead?FontWeight.bold:FontWeight.normal),),
          ],
        ),
      ),
    );

  }
}
