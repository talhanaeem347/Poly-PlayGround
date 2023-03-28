import 'package:flutter/material.dart';

import '../../../custom.dart';

class EmailVerifiaction extends StatelessWidget {
  const EmailVerifiaction({super.key});
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
                      icon: const Icon(Icons.arrow_back_ios, size: 20),
                      onPressed: ()=>Navigator.pop(context),
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: const <Widget>[
                    CustomText(text: 'Check your inbox', color: Colors.black),
                    SizedBox(height: 10),
                    CustomText(text: 'Confirm Email', color: Colors.black),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      InputField(hint: '----', icon:Icon( Icons.paste)),
                      SizedBox(height: 10),
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
                const SizedBox(height: 15),
                CustomButton(
                  path: '/home',
                  child: const Text('VALIDATE'),),
                const Spacer(),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
