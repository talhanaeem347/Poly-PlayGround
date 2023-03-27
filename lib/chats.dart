import 'package:poly_playground/chat2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class chats extends StatelessWidget {
  const chats({Key? key});

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
      child: SafeArea(

        child: Scaffold(
          resizeToAvoidBottomInset: false,

          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child:Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.person,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Navigate to the profile page
                        },
                      ),
                    ),
                    // const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.home,
                          color: Colors.black,
                          size: 26,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Home');// Navigate to the home page
                        },
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.yellow,

                      ),
                      child: CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.video_camera_solid,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/chat');// Navigate to the video page
                        },
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(100),

                        color: Colors.red,
                      ),
                      child: CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.heart_solid,
                          color: Colors.white,

                        ),
                        onPressed: () {
                         // Navigate to the like page
                        },
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.chat_bubble_2,
                          color: Colors.black,
                          size: 24,
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  chat2()),
                          // );// Navigate to the chat/messaging page
                          Navigator.pushNamed(context, '/profile');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          body:Column(
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
