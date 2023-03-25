import 'package:calculator/chats.dart';
import 'package:flutter/material.dart';

class chat2 extends StatelessWidget {
  const chat2({Key? key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>  chats()),
              // );
              Navigator.pushNamed(context, '/');

            },
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: IconButton(
                      icon: const CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/oval.png'),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Silivia',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,color: Colors.black),

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                    children:[
                      const SizedBox(height: 400,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:   const [
                          Text(
                            'Today 12:35',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,color:Color.fromRGBO(60, 60, 67, 100),
                            ),
                          ),

                        ],
                      ),// Date Or Time
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF8A2D25),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 55,
                            width: 270,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Follow Your Dream',
                                hintStyle: TextStyle(
                                  color: Colors.white,
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
                          ),

                        ],
                      ),//Message recived
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF1F1F1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 55,
                            width: 270,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Follow Your Dream',
                                hintStyle: TextStyle(
                                  color: Colors.black,
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
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFF1F1F1),
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(25), right: Radius.circular(25)),
                            ),
                            width: 255,
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'write something.......',
                                hintStyle: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 16,
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: const BorderRadius.horizontal(left: Radius.circular(25), right: Radius.circular(25)),
                              ),
                              width: 70,
                              height: 50,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color:  Color.fromRGBO(60, 60, 67, 100),
                              ),
                            ),
                          ),
                        ],
                      )

                    ] ,
                  ),
            ),



    );
  }
}
