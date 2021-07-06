import 'package:flutter/material.dart';
import 'package:portofolio/common/constant.dart';
import 'package:portofolio/common/responsive_widget.dart';
import 'package:portofolio/common/styles.dart';
import 'appbar_item.dart';

class HomeAppbar extends StatefulWidget {
  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _buildMainAppbar(context),
      mediumScreen: _buildMainAppbar(context),
      smallScreen: _buildSecondaryAppbar(context),
    );
  }

  Widget _buildSecondaryAppbar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(24,24, 24, 40),
      child: Row(
        children: [
          Hero(
            tag: "logo",
            child: Text(
              'Logo',
              style: Theme.of(context).textTheme.headline4!.copyWith(color: whiteColor),
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
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(32,32, 32, 100),
      child: Row(
        children: [
          Hero(
            tag: "logo",
            child: Text(
              'Logo',
              style: Theme.of(context).textTheme.headline4,
            ),
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