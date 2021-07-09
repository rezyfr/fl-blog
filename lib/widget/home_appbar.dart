import 'package:flutter/material.dart';
import 'package:portofolio/common/constant.dart';
import 'package:portofolio/common/responsive_widget.dart';
import 'package:portofolio/common/styles.dart';
import 'appbar_item.dart';

class HomeAppbar extends StatefulWidget {
  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _buttonColorTween;
  late Animation _textColorTween;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _buttonColorTween = ColorTween(begin: navyColor, end: cyanColor)
        .animate(_animationController);
    _textColorTween = ColorTween(begin: cyanColor, end: navyColor)
        .animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _buildMainAppbar(context),
      mediumScreen: _buildMainAppbar(context),
      smallScreen: _buildSecondaryAppbar(context),
    );
  }

  Widget _buildSecondaryAppbar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 24, 24, 48),
      child: Row(
        children: [
          Hero(
            tag: "logo",
            child: Text(
              'Logo',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: whiteColor),
            ),
          ),
          Spacer(),
          Material(
            color: navyColor,
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: cyanColor,
              ),
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMainAppbar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(32, 32, 32, 64),
      child: Row(
        children: [
          Hero(
            tag: "logo",
            child: Text(
              'Logo',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: whiteColor),
            ),
          ),
          Spacer(),
          AppbarItem(title: "About", number: "01", onPress: () {}),
          AppbarItem(title: "Blog", number: "02", onPress: () {}),
          AppbarItem(title: "Contact", number: "03", onPress: () {}),
          InkWell(
            onHover: (hover) {
              if (hover) {
                _animationController.forward();
              } else {
                _animationController.reverse();
              }
            },
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: AnimatedBuilder(
                animation: _buttonColorTween,
                builder: (context, child) => ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: cyanColor),
                            color: _buttonColorTween.value,
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: _textColorTween,
                        builder: (context, child) => TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: _textColorTween.value,
                            textStyle: Theme.of(context).textTheme.button,
                          ),
                          onPressed: () {},
                          child: const Text('Resume'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
