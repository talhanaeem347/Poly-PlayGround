import 'package:flutter/material.dart';
import 'package:poly_playground/ui/auth/loginsignup/loginsignup.dart';

import '../../../custom.dart';
//import 'package:my_polyground/constant.dart';


class   LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  void initState() {
    // TODO: implement initState

  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xFF8A2D25),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 0),
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                      child: CustomText(text: "Poly Playground"),
                    ),
                  ),
                ],
              ),
             const  SizedBox(height: 70),
            const   Text(
                'By clicking Log In, you agree with our Terms,',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
             const  Text(
                ' Learn how we process your data in our Privacy',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                child: const Text(
                  ' Policy and Cookies Policy.',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  // Add privacy policy and cookies policy link
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    CustomButton(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/googleicon.png', height: 24),
                            SizedBox(width: 30),
                            CustomText(color: Colors.black,uppercase: true),
                          ],
                        ),
                      ),
                    ),

                   const  SizedBox(height: 15),
                    CustomButton(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/ics_facbook.png', height: 24),
                           const  SizedBox(width: 30),
                         const   CustomText(text: "Login with facebook",color: Colors.black,uppercase:true ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomButton(
                      path: "/login_with_phone",
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/ic_phone.png', height: 24),
                          const   SizedBox(width: 30),
                           const  CustomText(text: "login with phone ",color: Colors.black,uppercase:true),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 90),
              TextButton(
                child:const  Text(
                  'Dont have an account?',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  // Navigate to the login screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSignup()));

                  //Navigate to the login screen
                },
              ),
              TextButton(
                child:const  Text(
                  'Signup',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {


                      // Navigate to the login screen
                     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSignup()));

                  // Navigate to the login screen

                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
