import 'package:flutter/material.dart';

import '../models/car.dart';
import '../screens/tabsScreen.dart';

class WelcomingScreen extends StatelessWidget {
  List<Car> bookmarkedCars = [];
  WelcomingScreen(this.bookmarkedCars);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width > 600
                ? 600
                : MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height > 800
                ? 800
                : MediaQuery.of(context).size.height,
            child: Image.asset('pics/bg.jpg', fit: BoxFit.cover),
          ),
          Container(
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: const Text(
                    'AutoGear',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Best Car Selling ... ',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(height: 380),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 200),
                          pageBuilder: (_, __, ___) => Tabs(bookmarkedCars),
                          transitionsBuilder: (_, anim, __, child) =>
                              FadeTransition(opacity: anim, child: child),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
