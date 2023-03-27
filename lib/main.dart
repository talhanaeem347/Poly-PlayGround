import 'Home.dart';
import 'package:poly_playground/chats.dart';
import 'Settings.dart';
import 'chats.dart';
import 'Notifications.dart';
import 'chat2.dart';
import 'chat3.dart';
import 'chat4.dart';
// import 'Settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      initialRoute: '/chats',
        routes: {
          '/': (context) => chats(),
          '/profile': (context) => chat2(),
          '/chat': (context)=> chat3(),
          '/chat4':(context)=>chat4(),
          '/settings':(context)=>const Settings(),
          '/Home':(context)=>const Home(),
          '/Notifications':(context)=>const Notifications(),

        },

      debugShowCheckedModeBanner: false,
      //home: chats()
    );
  }
}

