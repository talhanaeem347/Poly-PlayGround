import 'package:flutter/material.dart';
import 'package:poly_playground/custom.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add code to handle back button press
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(255, 255, 255, 70),
                            width: 2.0,
                          ),
                        ),
                        child: ClipOval(
                            child: Image.asset(
                              'assets/oval.png',
                              fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    const Text(
                      'Notifications',
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255, 70)),
                    ),
                    IconButton(
                      iconSize: 40.0,
                      icon: const Icon(
                        Icons.menu,
                        size: 40.0,
                      ),
                      onPressed: () {
                        // Add code to handle menu button press
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 120.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomContainer(),
              ),


              const SizedBox(height: 30.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomContainer(),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                 child: CustomContainer(),
              ),
              const SizedBox(height: 50),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 130),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');// Button pressed code here
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
