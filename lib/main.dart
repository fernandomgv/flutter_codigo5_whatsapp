import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/pages/homes_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff01C851)
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF065E52)
        )
      ),
      home: HomePage(),
    );
  }
}
