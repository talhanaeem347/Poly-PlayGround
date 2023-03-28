import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'custom.dart';

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
                          Navigator.pushNamed(context, '/Photo_profile');

                          // Navigate to the profile page
                        },

                    ),
                    ),
                    MyIconButton(
                      color: Colors.white,
                      path: "/Home",
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
                  Navigator.pushNamed(context, '/settings');
                  // Add your menu functionality here
                },
              ),
              const CustomButton(child: CustomText(
                text:"For You",color: Colors.yellow,fontSize: 10,
              ),
              ),
              const SizedBox(width: 8.0),
              const CustomButton(child: CustomText(
                text:"Trending",color: Colors.red,fontSize: 10,
              ),
              ),
              const SizedBox(width: 8.0),
              const CustomButton(child: CustomText(
                text:"Nearby",color: Colors.black,fontSize: 10,
              ),
              ),
              const SizedBox(width: 8.0),
              const CustomButton(child: CustomText(
                text:"New",color: Colors.black,fontSize: 10,
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
                  children: const [
                     ImageHolder(image: 'assets/1.png',),
                     ImageHolder(image: 'assets/2.png',),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                     ImageHolder(image: 'assets/3.png',),
                     ImageHolder(image: 'assets/4.png',),
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
                      children: const [
                        ImageHolder(image: 'assets/5.png',),
                        ImageHolder(image: 'assets/6.png',),
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
                          Navigator.pushNamed(context, '/calling');// Add your onPressed function here
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