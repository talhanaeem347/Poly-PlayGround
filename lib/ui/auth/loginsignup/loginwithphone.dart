import 'package:flutter/material.dart';


import '../../../custom.dart';

class LoginWithPhone extends StatelessWidget {
  const LoginWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyGradient(
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
                SizedBox(height: 20),
                CustomText(text: 'Connect by Phone Number',color: Colors.black,),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                    child: InputField(hint: "PHONE NUMBER", icon:Icon(Icons.phone))),

                const SizedBox(height: 30),
               const  CustomButton(
                  path: '/Phone_Verification',
                  child: Text("Continue"),

                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
