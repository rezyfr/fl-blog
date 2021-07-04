import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/common/styles.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hi, my name is',
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: cyanColor),
              textAlign: TextAlign.left,
            ),
            Text(
              'Fidriyanto Rizkillah',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: whiteColor),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
