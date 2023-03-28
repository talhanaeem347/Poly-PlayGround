import 'package:flutter/material.dart';


class Photo extends StatelessWidget {
  const Photo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF8A2D25), Color(0xFFFFFFFF)],
          ),
        ),

        child: Column(
          children: [
            SizedBox( height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 18),
                  onPressed: () {
                    // Add functionality here
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 40),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const <Widget>[
                  Text(
                    'Your pictures',
               style: TextStyle(fontSize: 25,
               fontWeight: FontWeight.bold,),
                    textDirection: TextDirection.ltr,
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const <Widget>[
                  Text(
                    'Please insert at least one of your photos...',
                    style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold,),
                    textDirection: TextDirection.ltr,
                  ),

                ],
              ),
            ),
          SizedBox(height: 70),
          Container(
            height: 120,
            width: 250,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFC4A484),
                        ),
                      ),
                      SizedBox(width: 10),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                              color: Color.fromRGBO(255, 255, 255, 0.7),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.grey,
                            iconSize: 15,

                            onPressed: () {
// TODO: add functionality to the plus icon button
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 250,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFC4A484),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,

                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                              color: Color.fromRGBO(255, 255, 255, 0.7),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.grey,
                            iconSize: 15,
                            onPressed: () {
// TODO: add functionality to the plus icon button
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
            SizedBox(height: 40),
          Container(
            height: 120,
            width: 250,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:1 ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFC4A484),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                              color: Color.fromRGBO(255, 255, 255, 0.7),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.grey,
                            iconSize: 15,
                            onPressed: () {
// TODO: add functionality to the plus icon button
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 250,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFC4A484),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromRGBO(255, 255, 255, 0.7)
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.grey,
                            iconSize:  15,

                            onPressed: () {
// TODO: add functionality to the plus icon button
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 140),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 110),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: const Padding(
                        padding:EdgeInsets.symmetric(horizontal: 35,vertical:15)  ,
                        child: Text('Create')),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF8A2D25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                ],
              ),
            ),
          ],
        ),






      ),

    );
  }
}
