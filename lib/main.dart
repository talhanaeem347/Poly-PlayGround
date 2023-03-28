import 'Home.dart';
import 'package:poly_playground/chat_notification.dart';
import 'Settings.dart';
import 'chat_notification.dart';
import 'Notifications.dart';
import 'chat.dart';
import 'calling.dart';
import 'video_call.dart';
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
      initialRoute: '/home',
        routes: {
          '/chat_notification': (context) => const chats(),
          '/chat': (context) => const chat2(),
          '/calling': (context)=> const chat3(),
          '/video_call':(context)=>const chat4(),
          '/settings':(context)=>const Settings(),
          '/home':(context)=>const Home(),
          '/Notifications':(context)=>const Notifications(),

        },

      debugShowCheckedModeBanner: false,
      //home: chats()
    );
  }
}

