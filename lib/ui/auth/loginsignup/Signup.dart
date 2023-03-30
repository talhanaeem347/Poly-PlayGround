import 'package:flutter/material.dart';


import '../../../custom.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

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

                          onPressed: ()=>Navigator.pop(context),

                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                CustomText(text:' Register your account',color: Colors.white,),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                     CustomText(text:'By email',color: Colors.white,isdecoration: true,),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Signup-with-phone');
                      },
                      child: const Text( 'By telephone',
                            style: TextStyle(
                              height: 1.0,
                              fontSize: 14,
                              color: Colors.white,

                            ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: const [
                      SizedBox(height: 12),
                      InputField(hint: '𝐄𝐌𝐀𝐈𝐋', icon:Icon( Icons.email),)
                      , SizedBox(height: 15),
                      InputField(hint: 'Password', icon:Icon( Icons.lock_sharp),)
                      , SizedBox(height: 15),
                      InputField(hint: 'Confirm the password', icon:Icon( Icons.lock_sharp),)
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const CustomButton(
                  path: '/Email-Verification',
                  color: Color(0xFF8A2D25),
                  child: Text('Create'),),
                const Spacer(),
              ],
            ),
        ),
      ),
    );
  }
}
