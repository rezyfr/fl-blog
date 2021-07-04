import 'package:flutter/material.dart';

import 'common/styles.dart';
import 'ui/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: myTextTheme,
      ),
      home: HomeScreen(),
    );
  }
}