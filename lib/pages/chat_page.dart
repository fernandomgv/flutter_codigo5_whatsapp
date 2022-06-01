import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/widgets/Item_chat_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/data_dummy.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
            itemCount: chatList.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemChatWidget(chat: chatList[index]);
              /*
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                          fit: BoxFit.cover
                        ),
                      ),

                      /*
                      child: Image.network("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
                      height: 64,
                        width: 64,
                      fit: BoxFit.cover,),
                      */
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nombre del contacto $index"),
                        Text("Ultimo mensaje $index"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(DateTime.now().toString().substring(0,10)+ " - " + index.toString()),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:Color(0xFF065E52),
                          ),
                          child: Text(index.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white

                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            */
            }));
  }
}
