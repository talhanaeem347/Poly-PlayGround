import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final Icon icon;
  final FontWeight fontWeight;

  const InputField({
    super.key,
    required this.hint,
    required this.icon,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.black, fontWeight: fontWeight),
          labelText: hint,
          prefixIcon: icon,
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

  const CustomButton({
    super.key,
    required this.child,
    this.fontWeight = FontWeight.w500,
    this.width = 120,
    this.height = 50,this.color=const  Color(0xFFFFFFFF),
    this.background = Colors.white,
    this.foreground = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
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
  const CustomText({super.key,this.color=Colors.white,this.uppercase=false,this.text = "Login With Google",this.fontSize=16});

  @override
  Widget build(BuildContext context) {
    return  Text(uppercase? text.toUpperCase():text ,

      style: TextStyle(
        color:color,
        fontSize: fontSize.toDouble(),

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
        // child: const Icon(
        //   // CupertinoIcons.heart_solid,
        //
        //   color: Colors.white,
        //
        // ),
        child: icon,
        onPressed: () => onPressed,
      ),
    );
  }
}
