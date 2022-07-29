// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:rica_app/login.dart';
import 'package:rica_app/registerPage.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key}) : super(key: key);

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      new Slide(
        title: "Book a Trip",
        description: "Your personal e-hailing experience with us.",
        pathImage: "assets/images/strawberry.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "Food Delivery",
        description:
            "Order your food and get it delivered to you wherever you are.",
        pathImage: "assets/images/fork.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "Package Delivery",
        description:
            "We help you deliver package, merchandise or documents to your recipient(s).",
        pathImage: "assets/images/family-traveling-by-car.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Grocery Delivery",
        description:
            "Order your grocery and get it delivered to you wherever you are.",
        pathImage: "assets/images/lemonCake.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "Medicines Delivery",
        description:
            "Order your medicines and get it delivered to you wherever you are.",
        pathImage: "assets/images/lemonCake.jpg",
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (var i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[1];
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 20, top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Image.asset(
                    currentSlide.pathImage.toString(),
                    matchTextDirection: true,
                    height: 60,
                  ),
                ),
                Text(
                  currentSlide.title.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 5,
                    right: 5,
                    bottom: 20,
                  ),
                  child: Text(
                    currentSlide.description.toString(),
                    style:
                        TextStyle(color: Colors.white, fontSize: 20, height: 1),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: SizedBox(
          height: 200,
          child: Image.asset(
            "assets/images/RicaLogo.png",
            alignment: Alignment.bottomCenter,
          ),
        ),
        shadowColor: null,
        elevation: 0,
        toolbarHeight: 200,
      ),
      body: IntroSlider(
        backgroundColorAllSlides: Colors.orange,
        sizeDot: 8.0,
        typeDotAnimation: DotSliderAnimation.SIZE_TRANSITION,
        listCustomTabs: renderListCustomTabs(),
        colorActiveDot: Colors.white,
        showSkipBtn: false,
        showNextBtn: false,
        showPrevBtn: false,
        showDoneBtn: false,
        scrollPhysics: BouncingScrollPhysics(),
        hideStatusBar: false,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              width: 280,
              padding: EdgeInsets.only(top: 0, bottom: 5),
              child: Text(
                "Get Moving With RicaTrip",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        onPrimary: Colors.orange,
                        side: BorderSide(color: Colors.orange),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        minimumSize: Size(160, 48),
                      ),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        elevation: 0,
                        onPrimary: Colors.white,
                        side: BorderSide(color: Colors.orange),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        minimumSize: Size(160, 48),
                      ),
                      child: Text(
                        "SIGNIN",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
