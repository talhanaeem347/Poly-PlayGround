import 'package:flutter/material.dart';
import 'package:poly_playgroundd/custom.dart';

import 'auth/loginsignup/login.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate a long-running task like loading data
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the login screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LogIn()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color(0xFF8A2D25),
          child: Center(
            child: Image.asset(
              'assets/logo.png',
              width: 350,
              height: 350,
            ),
          ),
        ),
      ),
    );
  }
}
