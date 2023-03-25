import 'package:flutter/material.dart';

class chat4 extends StatelessWidget {
  const chat4({Key? key});

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
                   Navigator.pushNamed(context, '/chat');
                 },
               ),
             ],
           ),
         ),
        Padding(
          padding: const EdgeInsets.only(top: 270,right: 38),
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
           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.red,
                 ),
                 width: 90,
                 height: 70,
                 child: IconButton(
                   onPressed: () {},
                   icon: const Icon(
                     Icons.call_end,
                     color: Colors.white,
                   ),
                   iconSize: 30,
                   padding: const EdgeInsets.all(15),
                   splashRadius: 20,
                   color: Colors.grey[300],
                   tooltip: 'Cancel Call',
                 ),
               ),
               Container(
                 decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.yellow,
                 ),
                 width: 90,
                 height: 70,
                 child: IconButton(
                   onPressed: () {},
                   icon: const Icon(
                     Icons.video_call,
                     color: Colors.white,
                   ),
                   iconSize: 30,
                   padding: const EdgeInsets.all(15),
                   splashRadius: 20,
                   color: Colors.grey[300],
                   tooltip: 'Cancel Video Call',
                 ),
               ),
               Container(
                 decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.blue,
                 ),
                 width: 90,
                 height: 70,
                 child: IconButton(
                   onPressed: () {},
                   icon: const Icon(
                     Icons.volume_up,
                     color: Colors.white,
                   ),
                   iconSize: 30,
                   padding: const EdgeInsets.all(15),
                   splashRadius: 20,
                   color: Colors.grey[300],
                   tooltip: 'Loudspeaker On/Off',
                 ),
               ),
             ],
           ),
         )
       ],
        )
      ),
    );
  }
}
