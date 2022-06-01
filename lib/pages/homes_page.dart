
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/pages/status_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'call_page.dart';
import 'chat_page.dart';

class HomePage extends StatefulWidget {
 // const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState(){
    super.initState();
    this._tabController =  TabController(
                                length: 4,
                                vsync:  this,
                                initialIndex: 1,
                                animationDuration: Duration(milliseconds: 500));
    print("Init State");
  }
  @override
  Widget build(BuildContext context) {
    print("Init State");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message),
       // backgroundColor: Color(0xFF01C851),
      ),
      appBar: AppBar(
        //backgroundColor: Color(0xFF065E52),
        title: Text("Whatsapp"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
         // onTap: (){},
          controller: this._tabController,
          indicatorWeight: 3.5,
          indicatorColor: Colors.white ,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold
                ) ,
              ),
            ),
            Tab(child: Text(
              "STATUS",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold
              ) ,
            ),),
            Tab(child: Text(
              "CALLS",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold
              ) ,
            ),),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: this._tabController,
          children: [
            Center(child: Text("Pagina 1")),
            ChatPage(),
            StatusPage(),
      CallPage(),
          ],
        ),
      ),
    );
  }
}
