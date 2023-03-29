import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'custom.dart';

class chat_notifications extends StatelessWidget {
  const chat_notifications({Key? key});

  @override
  Widget build(BuildContext context) {

    return Container(
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
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: SafeArea(
            child:Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyIconButton(
                      color: Colors.white,
                      path: "/Photo_profile",
                      // isBorder: true,
                      icon:  Icon(
                        CupertinoIcons.person,
                        color: Colors.black,
                      ),
                    ),
                    MyIconButton(
                      color: Colors.white,
                      path: "/home",
                      // isBorder: true,
                      icon:  Icon(
                        CupertinoIcons.home,
                        color: Colors.black,
                      ),
                    ),
                    MyIconButton(
                      color: Colors.yellow,
                      // isBorder: true,
                      path: "/calling",
                      icon:  Icon(
                        CupertinoIcons.video_camera_solid,
                        color: Colors.white,
                      ),
                    ),
                    MyIconButton(
                      path: "/chat_notification",
                      color: Colors.red,
                      icon:  Icon(
                        CupertinoIcons.heart_solid,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    MyIconButton(
                      path: "/chat",
                      color: Colors.white,
                      borderRadius: 20,
                      icon:  Icon(
                        CupertinoIcons.chat_bubble_2,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15), // set the radius as required
                  ),
                  height: 630, // adjust the height here
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 0,
                          child: Container(
                            width: 40,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF8A2D25), // use the given color
                              shape: BoxShape.circle, // make the border circular
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25), // set the radius as required
                              child: Image.asset(
                                'assets/oval.png', // replace with your image URL
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover, // set the image fit as required
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.red, // use the given color
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text(
                              "Chats",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            "You have no messages !",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
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
    );
  }
}