import 'package:flutter/material.dart';
import 'custom.dart';

class video_call extends StatelessWidget {
  const video_call({Key? key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/4.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
       children: [
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 70),
             child: Row(
               children: [
                 IconButton(
                   icon: const Icon(Icons.arrow_back,color: Colors.red),
                   onPressed: () {
                    // Navigator.of(context).pop();
                     Navigator.pushNamed(context, '/calling');
                   },
                 ),
               ],
             ),
           ),
          Padding(
            padding: const EdgeInsets.only(top: 210,right: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Container(
              width: 100,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/6.png"),
                  fit: BoxFit.cover,
                ),
              ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pinkAccent,
                        ),
                        width: 90,
                        height: 30,
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          onPressed: () {
                            // Add your refresh functionality here
                          },
                          iconSize: 15,
                          color: Colors.white,
                          tooltip: 'Refresh',
                          splashColor: Colors.grey,
                          splashRadius: 30,
                          highlightColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: const [
                 MyIconButton(path: "/home", icon: Icon(Icons.call_end,color: Colors.white,size: 35), color: Colors.red, ),
                 MyIconButton(path: "/video_call", icon: Icon(Icons.video_call,color: Colors.white,size: 35), color: Colors.yellow, ),
                 MyIconButton(path: "/home", icon: Icon(Icons.volume_up,color: Colors.white,size: 35), color: Colors.blue, ),
               ],
             ),
           )
       ],
          ),
        )
      ),
    );
  }
}
