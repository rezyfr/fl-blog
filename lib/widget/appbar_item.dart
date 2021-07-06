
import 'package:flutter/material.dart';
import 'package:portofolio/common/responsive_widget.dart';
import 'package:portofolio/common/styles.dart';

class AppbarItem extends StatelessWidget {
  const AppbarItem({
    Key? key,
    required this.title,
    required this.number,
    required this.onPress,
  }) : super(key: key);
  final String title;
  final String number;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: navyColor,
      child: ResponsiveWidget(
        largeScreen: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  '$number. ',
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: cyanColor),
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: whiteColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
