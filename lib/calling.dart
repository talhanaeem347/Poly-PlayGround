import 'package:flutter/material.dart';
import 'package:poly_playground/custom.dart';
class calling extends StatelessWidget {
  const calling({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const MyIconButton(
          color: Colors.white,
          path: "/home",
           isBorder: false,
          icon:  Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
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
               CustomText(text: 'Jenny Wilson', fontSize: 22, fontWeight: FontWeight.w500,color: Colors.black,),
             ],
           ),
           const SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:   const [
               CustomText(text: ' 03:35 minutes', color: Color.fromRGBO(60, 60, 67, 100), fontSize: 16, fontWeight: FontWeight.w400,),
             ],
           ),
           const SizedBox(height: 140,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:const [
                  MyIconButton(path: "/home", icon: Icon(Icons.call_end,color: Colors.white,size: 35), color: Colors.red, ),
                  MyIconButton(path: "/video_call", icon: Icon(Icons.video_call,color: Colors.white,size: 35), color: Colors.yellow, ),
                  MyIconButton(path: "/home", icon: Icon(Icons.volume_up,color: Colors.white,size: 35), color: Colors.blue, ),
               ],
             ),
           )
         ],
       ),
    );
  }
}
