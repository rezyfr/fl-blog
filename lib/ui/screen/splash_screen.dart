import "package:flutter/material.dart";
import 'package:lottie/lottie.dart';
import 'package:portofolio/common/responsive_widget.dart';
import 'package:portofolio/common/styles.dart';
import 'dart:async';

import 'package:portofolio/ui/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(
      new Duration(milliseconds: 5000),
      () {
        Navigator.of(context).push(
          new MaterialPageRoute(builder: (context) => new HomeScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: Center(
        child: Hero(
          tag: "logo",
          child: ResponsiveWidget(
            largeScreen: Lottie.asset(
              'assets/splash_screen.json',
              width: 250,
              height: 250,
            ),
            mediumScreen: Lottie.asset(
              'assets/splash_screen.json',
              width: 200,
              height: 200,
            ),
            smallScreen: Lottie.asset(
              'assets/splash_screen.json',
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
