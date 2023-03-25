import 'package:flutter/material.dart';

class chat3 extends StatelessWidget {
  const chat3({Key? key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
       body: Column(
         children: [
           const SizedBox(height: 150,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border: Border.all(
                     color: Colors.white,
                     width: 3,
                   ),
                 ),
                 width: 180,
                 height: 180,
                 child: ClipOval(
                   child: Image.asset(
                     'assets/4.png',
                     width: 150,
                     height: 150,
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
             ],
           ),
           const SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:   const [
               Text(
                 'Jenny Wilson',
                 style: TextStyle(
                   fontSize: 22,
                   fontWeight: FontWeight.w500,color:Colors.black,
                 ),
               ),

             ],
           ),
           const SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:   const [
               Text(
                 ' 03:35 minutes',
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w400,color:Color.fromRGBO(60, 60, 67, 100),
                 ),
               ),

             ],
           ),
           const SizedBox(height: 140,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
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
                     onPressed: () {
                       Navigator.pushNamed(context, '/chat4');
                     },
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
       ),
    );
  }
}
