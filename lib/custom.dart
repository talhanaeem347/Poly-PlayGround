import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final Icon icon;
  final FontWeight fontWeight;
  final double width;
  final bool isIcon;

  const InputField({
    super.key,
    required this.hint,
    this.icon=const Icon(Icons.person),
    this.width = 300,this.isIcon = true,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      width: width,
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.black, fontWeight: fontWeight),
          labelText: hint,
          prefixIcon:isIcon ? icon: null,
          prefixIconColor: Colors.black,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(7),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final Color color;
  final FontWeight fontWeight;
  final Color background;
  final Color foreground;
  final String path;
  // final Function()? onPressed;
  const CustomButton({
    super.key,
    required this.child,
    this.fontWeight = FontWeight.w500,
    this.width = 160,
    this.height = 50,this.color=const  Color(0xFF8A2D25),
    this.background = Colors.white,
    this.foreground = Colors.black,
    this.path = "",
    // this.onPressed, // initialize the new parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {

          Navigator.pushNamed(context, path);
        },
        child: child,
        style: ElevatedButton.styleFrom(
          //minimumSize: Size(width, height),
          backgroundColor:  color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

class MyGradient extends StatelessWidget {
  final Widget child;
  const MyGradient({super.key,required this.child,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF8A2D25), Color(0xFFFFFFFF)],
        ),
      ),
      child: child,
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final bool  uppercase;
  final int fontSize;
final  bool  isdecoration;
  const CustomText({super.key,this.isdecoration=false,this.color=Colors.white,this.uppercase=false,this.text = "Login With Google",this.fontSize=16});

  @override
  Widget build(BuildContext context) {
    return  Text(uppercase? text.toUpperCase():text ,

      style: TextStyle(
        color:color,
        fontSize: fontSize.toDouble(),
        decoration: isdecoration ? TextDecoration.underline: null,

      ),
    );
  }
}
class MyIconButton extends StatelessWidget {
   final Color color;
   final   Widget icon;
   final  Function onPressed ;
   final double borderRadius;
    final bool isBorder;

  const MyIconButton({
    super.key,
    required this.color,
    this.icon = const Icon(
      CupertinoIcons.heart_solid,
      color: Colors.white,
    )
    ,required this.onPressed
    ,this.borderRadius=100,
    this.isBorder =false


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isBorder ?  Border.all(color: Colors.white, width: 2) : null,
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: CupertinoButton(

        child: icon,
        onPressed: () => onPressed,
      ),
    );
  }
}
class CustomText1 extends StatelessWidget {
  final String text;
  final Color color;
  final bool  uppercase;
  const CustomText1({super.key,this.color=Colors.white,this.uppercase=false,this.text = "Login With Google"});

  @override
  Widget build(BuildContext context) {
    return  Text(uppercase? text.toUpperCase():text ,

      style: TextStyle(
        color:color,


        fontSize: 20,

      ),
    );
  }
}