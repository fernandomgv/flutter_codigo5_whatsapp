import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/models/chats_message.dart';

import '../data/data_dummy.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  //const ChatDetailPage({Key? key}) : super(key: key);
  TextEditingController _messageController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black12,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    "Last seen today 11:39 AM",
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          //Listado de mensajes
          Container(
            color: Colors.black.withOpacity(0.14),
          ),
          ListView.builder(
              itemCount: chatMessage.length,
              itemBuilder: (BuildContext context, int index) {
                return Align(
                    alignment: chatMessage[index].messageType=="other"? Alignment.topLeft : Alignment.topRight,
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 6),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                            color: chatMessage[index].messageType=="other" ? Colors.white : Color(0xFFE0F9C1),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                              topRight: Radius.circular(chatMessage[index].messageType=="other" ? 14 : 0 ),
                              topLeft: Radius.circular(chatMessage[index].messageType=="other" ? 0 : 14),
                            )),
                        child: Text(chatMessage[index].messageContent)
                    )
                );
              }),
          /*
          ListView(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(14.0),
                            topRight: Radius.circular(14.0),
                            topLeft: Radius.circular(0),
                          )),
                      child: Text("Hola como estas")
                  )
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                          color: Color(0xFFE0F9C1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(14.0),
                            topRight: Radius.circular(0),
                            topLeft: Radius.circular(14.0),
                          )),
                      child: Text(
                          "Qué tal? estoy muy bien aprendiendo Flutter!"))),
            ],
          ),
          */
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                    controller: this._messageController ,
                      style: TextStyle(fontSize: 17.0),
                      cursorColor: Color(0xff065D54),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.sentiment_satisfied_alt_rounded,
                          size: 30.0,
                          color: Color(0xff787A79),
                        ),
                        hintText: "Type message",
                        hintStyle: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black38,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30.0)),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file_rounded,
                                size: 30,
                                color: Color(0xff787A79),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt_rounded,
                                color: Color(0xff787A79),
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                      color: Color(0xff00887B),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.mic,
                        color: Colors.white,
                        size: 30.0,),
                      onPressed: (){
                        chatMessage.add(ChatMessage(messageContent: this._messageController.text, messageType: "me"));
                        setState(() {

                        });
                      },
                    ),
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
