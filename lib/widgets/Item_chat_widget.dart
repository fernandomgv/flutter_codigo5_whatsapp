
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/chat_model.dart';
import '../pages/chat_detail_page.dart';

class ItemChatWidget extends StatelessWidget {
//  const ItemChatWidget({Key? key}) : super(key: key);
  ChatModel chat;
  ItemChatWidget({required this.chat});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetailPage()));
        },
        minLeadingWidth: 64,
        leading: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
              this.chat.avatarURL),
        ),
        title: Text(this.chat.userName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        subtitle: Text( this.chat.isTyping ? "Typing" : this.chat.message,
          style: TextStyle(
            color: this.chat.isTyping ? Color(0xff01C851)  : Colors.black.withOpacity(0.37)
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(this.chat.time,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black.withOpacity(0.37)
              ),
              ),
              SizedBox(height: 6,),
              Container(
                alignment: Alignment.center,
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: this.chat.countMessage>0 ? Color(0xff01C851) : Colors.white.withOpacity(0.07),
                ),
                child: Text(
                    this.chat.countMessage>0 ? this.chat.countMessage.toString() : "",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
      ),
    );
  }
}
