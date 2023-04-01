import 'package:poly_playgroundd/chat_notification.dart';
import 'package:flutter/material.dart';
import 'package:poly_playgroundd/custom.dart';
class chat extends StatelessWidget {
  const chat({Key? key});
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
              Navigator.pushNamed(context, '/chat_notifications');
            },
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:  const EdgeInsets.only(left: 0.0),
                    child: IconButton(
                      icon:  const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/oval.png'),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Silvia',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
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
                          children:  const [
                            Message(
                             bgColor: Color(0xFF8A2D25),
                              text: 'Follow Your Dream',
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  const [
                            Message(
                              bgColor: Color(0xFFE0E0E0),
                              text: 'Follow Your Dream',
                              color: Colors.black,
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Typo(
                              text: 'write something.......',
                              bgColor: Color(0xFFF1F1F1),
                              color: Color(0xFF9E9E9E),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
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
            ),
    );
  }
}