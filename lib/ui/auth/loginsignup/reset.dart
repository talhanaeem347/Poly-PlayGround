import 'package:flutter/material.dart';


import '../../../custom.dart';



class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                     IconButton(
                      icon: const Icon(Icons.arrow_back_ios, size: 20),
                      onPressed: () {
                        // Add functionality here
                      },
                      color: Colors.white,
                    ),
                  ],
                ),
                CustomText(text: 'EMIL', color: Colors.black),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: const [
                      SizedBox(height: 16),
                      InputField(hint: "EMIAL",icon: Icon(Icons.email)),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const CustomButton(
                  child: Text("Reset"),
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
