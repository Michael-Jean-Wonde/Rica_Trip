// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rica_app/intro_slider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Gender { Male, Female }

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Gender? _gender = Gender.Male;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    "Create Profile",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.shade200,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/lemonCake.jpg'),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            50,
                          ),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 4),
                            color: Colors.black.withOpacity(
                              0.3,
                            ),
                            blurRadius: 3,
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(Icons.add_a_photo, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "First Name *"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Last Name *"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                    initialCountryCode: 'ET',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text("Gender"),
                      Radio<Gender>(
                        value: Gender.Male,
                        groupValue: _gender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                      Text("Male"),
                      Radio<Gender>(
                        value: Gender.Female,
                        groupValue: _gender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                      Text("Female")
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Set Password *",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 0),
                          child: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.blue,
                            textDirection: TextDirection.rtl,
                          ),
                        )),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Referral Code"),
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
                        "REGISTER",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "By continuing, I confirm that i have read & agree to the Terms & Conditions and Privacy Policies",
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),

            // AppBar(
            //   leading: IconButton(
            //     icon: Icon(
            //       Icons.arrow_back_outlined,
            //       color: Colors.white,
            //     ),
            //     onPressed: onPressed,
            //   ),
            //   toolbarHeight: 120,
            //   backgroundColor: Colors.black,
            //   title: Text(" "),
            // ),
          ],
        ),
      ),
    );
  }
}
