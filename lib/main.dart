import 'package:flutter/material.dart';
import 'package:portofolio/ui/screen/splash_screen.dart';

import 'common/styles.dart';
import 'ui/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rezy FR ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: myTextTheme,
        backgroundColor: navyColor,
        canvasColor: lightNavyColor,
      ),
      home: SplashScreen(),
    );
  }
}