import 'package:flutter/material.dart';


import '../../../custom.dart';
class PhoneVerifiaction extends StatelessWidget {
  const PhoneVerifiaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  MyGradient(
        child: SafeArea(
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
                const SizedBox(height: 20),
                CustomText(text: 'Verification code',color: Colors.black,),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [

                      const SizedBox(height: 16),
                      InputField(hint: '----', icon: Icon(Icons.paste_sharp)),

                       const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          // Add resend functionality
                        },
                        child: Text('Resend!'.toString()),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),

                          onPrimary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const CustomButton(
                  path: '/home',
                  color: Color(0xFF8A2D25),
                  child: Text('Vadidate'),
                ),
                const Spacer(),
              ],
            ),
        ),
      ),
    );
  }
}
