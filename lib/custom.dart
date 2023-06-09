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
     this.hint="Want to chat ?",
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
  const CustomButton(
  {
  super.key,
  required this.child,
  this.fontWeight = FontWeight.w500,
  this.width = 120,
  this.height = 50,
  this.color = const Color(0xFFFFFFFF),
  this.background = Colors.white,
  this.foreground = Colors.black,
  this.path="/home",
});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, path),

        child: child,
        style: ElevatedButton.styleFrom(
          //minimumSize: Size(width, height),
          backgroundColor: color,
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

  const MyGradient({
    super.key,
    required this.child,
  });

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
  final bool uppercase;
  final int fontSize;
  final FontWeight fontWeight;
  final  bool  isdecoration;

  const CustomText({
    super.key,
    this.color = Colors.white,
    this.uppercase = false,
    this.text = "Login With Google",
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.isdecoration=false,
  });


  @override
  Widget build(BuildContext context) {
    return Text(
      uppercase ? text.toUpperCase() : text,
      style: TextStyle(
        color: color,
        fontSize: fontSize.toDouble(),

        decoration: isdecoration ? TextDecoration.underline: null,
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  final Color color;
  final Widget icon;
  final double borderRadius;
  final bool isBorder;
  final String path;

  const MyIconButton({
    super.key,
    this.color = Colors.white,
    this.icon = const Icon(
      CupertinoIcons.heart_solid,
      color: Colors.white,
    ),
    this.borderRadius = 100,
    this.isBorder = false,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isBorder ? Border.all(color: Colors.white, width: 2) : null,
        borderRadius: BorderRadius.circular(borderRadius),

        color: color,
      ),
      child: CupertinoButton(

        child: icon,
        onPressed: () => Navigator.pushNamed(context, path),

      ),
    );
  }
}

class ImageHolder extends StatelessWidget {
  final String image;

  const ImageHolder({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),

      child: Image.asset(
        image,
        height: 190.0, // Change the height of the image here
        width: 159.0,
        fit: BoxFit.cover,
      ),
    );
  }
}

class Message extends StatelessWidget {
  final Color bgColor;
  final Color color;
  final String text;

  const Message({
    super.key,
    this.bgColor = Colors.white,
    this.color = Colors.black,
    this.text = "Hello World",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 55,
      width: 270,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Hello World",
          hintStyle: TextStyle(
            color: color,
            fontSize: 16,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10, right: 10),
        ),
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

class Typo extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color color;
  final double fontSize;

  const Typo({
    super.key,
    this.text = "Write Something......",
    this.bgColor = const Color(0xFFF1F1F1),
    this.color = const Color(0xFF9E9E9E),
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(25), right: Radius.circular(25)),
      ),
      width: 255,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'write something.......',
          hintStyle: TextStyle(
            color: color,
            fontSize: 16,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}
class Customrow extends StatelessWidget {
 final String text;

  const Customrow({
    super.key,
   this.text = "Want to chat ?",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child:TextField(
            decoration: InputDecoration(
              hintText: 'Want to Chat ?',
              border: InputBorder.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: SizedBox(
            width: 41,
            height: 40,
            child: Image.asset('assets/oval.png'),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Perform action on arrow_forward icon click
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: const MyIconButton(
              path: '/chat',
              icon : Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color:  Color.fromRGBO(60, 60, 67, 100),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class CustomContainer extends StatelessWidget {
final int height;
final double radius_circular_left;
final double radius_circular_right;
  const CustomContainer({
    super.key,
   this.height = 47,
    this.radius_circular_left = 22.5,
    this.radius_circular_right = 22.5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(radius_circular_left),
            right: Radius.circular(radius_circular_right),
        ),
        color: Colors.white,
      ),
      child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Customrow(
          text: 'Want to Chat ?',
        ),
      ),
    );
  }
}
