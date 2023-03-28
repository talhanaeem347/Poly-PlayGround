import 'package:flutter/material.dart';

import '../../../custom.dart';

class SignupWithPhone extends StatelessWidget {
  const SignupWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ Color(0xFF8A2D25),Color(0xFFFFFFFF)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
    Row(
    children: [
    IconButton(
    icon: Icon(Icons.arrow_back_ios, size: 20),
    onPressed: ()=>Navigator.pop(context),

    padding: EdgeInsets.symmetric(horizontal: 2),
    color: Colors.white,
    ),
    ],
    ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                  child: Container(
                    height: 50,
                    width: 230,
                    margin: const EdgeInsets.only(left: 5, top: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Text(
                      'Register your account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'By email',
                      style: TextStyle(
                        height: 1.0,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'By telephone',
                      style: TextStyle(
                        height: 1.0,
                        fontSize: 14,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [

                      const SizedBox(height: 16),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'PHONE NUMBER',
                            prefixIcon: Icon(Icons.phone),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                CustomButton(
                  path: '/Phone_Verification',
                  child: const Text('CONTINUE'),color: Color(0xFF8A2D25),),
                const Spacer(),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
