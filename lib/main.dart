import 'Home.dart';
import 'package:poly_playground/chats.dart';
import 'Settings.dart';
import 'chats.dart';
import 'Notifications.dart';
import 'chat2.dart';
import 'chat3.dart';
import 'chat4.dart';
import 'Settings.dart';
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
      initialRoute: '/chat2',
        routes: {
          '/chats': (context) => const chats(),
          '/chat2': (context) => const chat2(),
          '/chat3': (context)=> const chat3(),
          '/chat4':(context)=>const chat4(),
          '/settings':(context)=>const Settings(),
          '/Home':(context)=>const Home(),
          '/Notifications':(context)=>const Notifications(),

        },

      debugShowCheckedModeBanner: false,
      //home: chats()
    );
  }
}

