import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add code to handle back button press
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(255, 255, 255, 70),
                            width: 2.0,
                          ),
                        ),
                        child: ClipOval(
                            child: Image.asset(
                              'assets/oval.png',
                              fit: BoxFit.cover),
                          ),
                        ),
                      ),


                    const Text(
                      'Notifications',
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255, 70)),
                    ),
                    IconButton(
                      iconSize: 40.0,
                      icon: const Icon(
                        Icons.menu,
                        size: 40.0,
                      ),
                      onPressed: () {
                        // Add code to handle menu button press
                      },
                    )


                  ],
                ),
              ),
              const SizedBox(height: 120.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 47,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(22.5),
                        right: Radius.circular(22.5)
                    ),
                    color: Colors.white,

                  ),

                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 10) ,
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
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
                            padding: const EdgeInsets.all(10),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color:  Color.fromRGBO(60, 60, 67, 100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 47,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(22.5),
                        right: Radius.circular(22.5)
                    ),
                    color: Colors.white,

                  ),

                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 10) ,
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
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
                            padding: const EdgeInsets.all(10),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color:  Color.fromRGBO(60, 60, 67, 100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 47,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(22.5),
                        right: Radius.circular(22.5)
                    ),
                    color: Colors.white,

                  ),

                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 10) ,
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
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
                            padding: const EdgeInsets.all(10),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color:  Color.fromRGBO(60, 60, 67, 100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 130),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');// Button pressed code here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8A2D25),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(135, 52),
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
