import 'package:flutter/material.dart';


import '../../custom.dart';
class BaseInfo extends StatelessWidget {
  const BaseInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyGradient(
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
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
                ),
                const SizedBox(height: 45),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                          child: CustomText(text:'BASE',color: Color(0xFF8A2D25))),
                      SizedBox(height: 30),
                      InputField(hint:'FULL NAME'),
                      SizedBox(height: 16),
                      InputField(hint:'JOB'),
                    ],
                  ),
                ),
                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        maxLines: 5,
                        // Set the maximum number of lines to 5
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,

                          hintText: 'Intoduction youself!',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0), // Set the radius to 20.0
                          ),

                        ),
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 120),
                CustomButton(child: const Text('CONTINUE')),
              ],
            ),

        ),
      ),
    );
  }
}
