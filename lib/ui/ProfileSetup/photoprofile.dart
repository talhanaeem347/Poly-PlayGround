import 'package:flutter/material.dart';

import '../../custom.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios, size: 18),
                      onPressed: ()=>Navigator.pop(context),
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      color: Colors.white,
                    ),
                  ],
                ),
                 const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                  child: Container(
                    height: 40,
                    width: 215,

                    margin: const EdgeInsets.only(left: 5, top: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Text(
                      'Profile Photo',
                      style: TextStyle(
                        // set BackgroundColor to red
                        color: Color(0xFF8A0000),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 160.0,
                  height: 160.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffB40303),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [

                      const SizedBox(height: 16),
                      Container(
                        height: 50,

                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 5),

                            Expanded(

                              child: Padding(
                                padding:EdgeInsets.symmetric(horizontal:35) ,

                                child:  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "𝐈𝐧𝐬𝐞𝐫𝐭 𝐲𝐨𝐮𝐫 𝐩𝐡𝐨𝐭𝐨",
                                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                                        border: InputBorder.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 180),
                CustomButton(child: const Text('Continue'),),

                const Spacer(),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
