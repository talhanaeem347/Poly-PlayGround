import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    const SizedBox(width: 10),
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
                          // Navigate to the home page
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
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
                          // Navigate to the video page
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
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
                    const SizedBox(width: 20),
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
                          // Navigate to the chat/messaging page
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
        ),
        body: Column(

            children: [
          Container(
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search_outlined),
                onPressed: () {
                  // Add your search functionality here
                },
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Add your menu functionality here
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your "For You" button functionality here
                },
                style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                ),
                child: const Text(
                  "For You",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              ElevatedButton(
                onPressed: () {
                  // Add your "Trending" button functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                ),
                child: const Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              ElevatedButton(
                onPressed: () {
                  // Add your "Nearby" button functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                ),
                child: const Text(
                  "Nearby",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              ElevatedButton(
                onPressed: () {
                  // Add your "New" button functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                ),
                child: const Text(
                  "New",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),


          Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child:  Image.asset(
                        'assets/1.png',
                        height: 190.0, // Change the height of the image here
                        width: 159.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child:  Image.asset(
                        'assets/2.png',
                        height: 190.0, // Change the height of the image here
                        width: 159.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child:  Image.asset(
                        'assets/3.png',
                        height: 190.0, // Change the height of the image here
                        width: 159.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child:  Image.asset(
                        'assets/4.png',
                        height: 190.0, // Change the height of the image here
                        width: 159.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            'assets/5.png',
                            height: 185.0, // Change the height of the image here
                            width: 159.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            'assets/6.png',
                            height: 185.0, // Change the height of the image here
                            width: 159.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),

                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Center(
                    child: SizedBox(
                      width: 160,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/chat');// Add your onPressed function here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Go Live',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                ],
                ),
              ),

            ]
        ),
      ),
    );
  }
}