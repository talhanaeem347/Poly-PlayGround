import 'package:flutter/material.dart';

import '../../custom.dart';

class BaseInfo2 extends StatelessWidget {
  const BaseInfo2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyGradient(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                IconButton(
                icon: const Icon(Icons.arrow_back_ios, size: 18),
                onPressed: () {
                  // Add functionality here
                },
                padding: const EdgeInsets.symmetric(horizontal: 2),
                color: Colors.white,
              ),
              ],
            ),
            CustomText(text: 'Role:',color: Colors.black),
            // const Tex,t(
            //   'Role:',
            //   style: TextStyle(fontSize: 18),
            // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Unicorn',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Radio(
                    value: true,
                    groupValue: null,
                    onChanged: null,
                  ),
                  // SizedBox(width: 35),
                  Text(
                    'Griffin',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(width: 38),
                  Radio(
                    value: true,
                    groupValue: null,
                    onChanged: null,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Couple',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Radio(
                    value: true,
                    groupValue: null,
                    onChanged: null,
                  ),
                  Text(
                    'Undecided',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Radio(
                    value: true,
                    groupValue: null,
                    onChanged: null,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: const <Widget>[  Text(
                  'Birthday:',
                  style: TextStyle(fontSize: 18),
                ),],
              ),
            ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Day',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Month',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Year',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: const <Widget>[  Text(
                  'Select your city:',
                  style: TextStyle(fontSize: 20),
                ),],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(

                  labelText: 'Town',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: const <Widget>[
                  Text(
                    'Choose your country:',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 90),
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
