import 'package:poly_playground/ui/ProfileSetup/photo.dart';
import 'package:poly_playground/ui/ProfileSetup/photoprofile.dart';
import 'package:poly_playground/ui/auth/loginsignup/Signup.dart';
import 'package:poly_playground/ui/auth/loginsignup/emailverifiaction.dart';
import 'package:poly_playground/ui/auth/loginsignup/login.dart';
import 'package:poly_playground/ui/auth/loginsignup/loginwithphone.dart';
import 'package:poly_playground/ui/auth/loginsignup/phoneverfication.dart';
import 'package:poly_playground/ui/auth/loginsignup/signupwithphone.dart';
import 'package:poly_playground/ui/splash.dart';

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

      initialRoute: '/',
        routes: {
          '/login' : (context) =>  LogIn(),
          '/login_with_phone' : (context) =>  const LoginWithPhone(),
          '/Signup' : (context) =>  const   Signup(),
          '/Phone_Verification' : (context) =>  const   PhoneVerifiaction(),
          '/Signup-with-phone' : (context) => const    SignupWithPhone(),
          '/Email-Verification' : (context) => const    EmailVerifiaction (),
          '/Photo_profile' : (context) => const    PhotoProfile(),



          '/': (context) => Splash(),
          '/profile': (context) => chat2(),
          '/chats': (context)=> chats(),
          '/chat4':(context)=>chat4(),
          '/settings':(context)=>const Settings(),
          '/home':(context)=>const Home(),
          '/Notifications':(context)=>const Notifications(),

        },

      debugShowCheckedModeBanner: false,
      //home: chats()
    );
  }
}

