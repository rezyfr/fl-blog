
import 'package:flutter/material.dart';
import 'package:portofolio/common/responsive_widget.dart';
import 'package:portofolio/common/styles.dart';

class AppbarItem extends StatefulWidget {
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
  State<AppbarItem> createState() => _AppbarItemState();
}

class _AppbarItemState extends State<AppbarItem> {

  Color textColor = whiteColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: navyColor,
      child: ResponsiveWidget(
        largeScreen: InkWell(
          onTap: widget.onPress,
          onHover: (hover){
            setState((){
              textColor = hover ? cyanColor : whiteColor;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  '${widget.number}. ',
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: cyanColor),
                ),
                Text(
                  widget.title,
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
