import 'package:flutter/material.dart';
import 'package:portofolio/common/styles.dart';
import 'appbar_item.dart';

class HomeAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Text(
            'Logo',
            style: Theme.of(context).textTheme.headline4,
          ),
          Spacer(),
          AppbarItem(title: "About", number: "01", onPress: () {}),
          AppbarItem(title: "Blog", number: "02", onPress: () {}),
          AppbarItem(title: "Contact", number: "03", onPress: () {}),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: cyanColor),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: cyanColor,
                      textStyle: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () {},
                    child: const Text('Resume'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
