// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rica_app/intro_slider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(left: 15, top: 25, bottom: 10),
              margin: EdgeInsets.only(bottom: 15),
              color: Colors.black,
              width: double.infinity,
              alignment: Alignment.topLeft,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      padding: EdgeInsets.only(top: 15, left: 0),
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IntroSliderPage()),
                        );
                      }),
                  Text(
                    "Get Moving With Rica Trip",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Column(
                children: [
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                    initialCountryCode: 'ET',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IntroSliderPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(192, 196, 107, 35),
                        elevation: 0,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        minimumSize: Size(300, 48),
                      ),
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
