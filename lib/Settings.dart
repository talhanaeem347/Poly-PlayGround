import 'package:flutter/material.dart';
import 'custom.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF8A2D25),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios,color: Color.fromRGBO(255, 255, 255, 70), size: 20.0, ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');// Add code to handle back button press
                    },
                  ),
                  const Text(
                    'Settings',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255, 70)),
                  ),
                  const SizedBox(width: 48.0),
                ],
              ),
              const SizedBox(height: 32.0),
              Container(
                color: Colors.white,
                height: 56,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 41.0,
                        height: 40.0,
                        child: Image.asset('assets/oval.png'),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'John Doe',
                                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'john.doe@example.com',
                                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w700,decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 2.0),
              Container(
                color:Colors.white,
                width: double.infinity,
                height: 56,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Switch to Dark Mode',
                        style: TextStyle(fontSize: 16.0,fontFamily: 'Times New Roman',fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 55.0,
                        height: 31.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: const Color.fromRGBO(120, 120, 128, 100), width: 1.5),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 25.0,
                              top: 0,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  border: Border.all(color: const Color.fromRGBO(120, 120, 128, 100),width: 1),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Container(
                                width: 25.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                color:Colors.white,
                width: double.infinity,
                height: 56,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 16.0,fontFamily: 'Times New Roman',fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(60, 60, 67, 100), size: 17.0, ),
                        onPressed: () {
                          // Add code to handle back button press
                        },
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 2.0,),
              Container(
                color:Colors.white,
                width: double.infinity,
                height: 56,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Change Password',
                        style: TextStyle(fontSize: 16.0,fontFamily: 'Times New Roman',fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(60, 60, 67, 100), size: 17.0, ),
                        onPressed: () {
                          // Add code to handle back button press
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 75,),
               Container(
                 padding:const EdgeInsets.symmetric(horizontal: 130),
                 child: ElevatedButton(
                  onPressed: () {
                    // Button pressed code here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8A2D25),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(135, 52),
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
              ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}
