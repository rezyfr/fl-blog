import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/common/constant.dart';
import 'package:portofolio/common/responsive_widget.dart';
import 'package:portofolio/common/styles.dart';
import 'package:portofolio/widget/animated_button.dart';
import 'package:portofolio/widget/contact_bar.dart';
import 'package:portofolio/widget/contact_item.dart';
import 'package:portofolio/widget/home_appbar.dart';

import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: navyColor,
      drawer: Drawer(),
      body: FadeTransition(
        opacity: _animation,
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeAppbar(),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: getHorizontalAppbarMargin(context),
                        vertical: size.width / 100,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              'Hello, my name is',
                              style: Theme.of(context)
                                  .textTheme
                                  .button!
                                  .copyWith(color: cyanColor),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          _buildMainText(context, true, size),
                          _buildMainText(context, false, size),
                          Container(
                            padding: const EdgeInsets.only(top: 16),
                            width: ResponsiveWidget.isSmallScreen(context)
                                ? null
                                : size.width / 2.5,
                            child: Text(
                              'A Jakarta-based software engineer who specializes in building exceptional mobile application with no experience of hacking someone\'s Instagram :).'
                              // 'I\'m a Jakarta-based software engineer who specializes in building exceptional mobile applications offering 2-years of experience on Android Development. '
                              '\n\nCurrently, I\'m building an impactful platform to support micro-entrepreneurs in Indonesia.',
                              // ' I also expanding my area of knowledge to Back-End Development and Cloud Computing.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: lightGrayColor, fontSize: 15),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(margin: EdgeInsets.only(top: 48),child: AnimatedButton(text: "Get In Touch", onPress: () {}, padding: 24))
                        ],
                      ),
                    ),
                    AboutScreen(),
                    SmallScreenContact(),
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: Center(
                        child: Text(
                          'Design inspired by Brittany Chiang'
                          '\nFidriyanto Rizkillah © 2021',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: lightGrayColor,
                                fontSize: 10,
                                height: 1.5,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            LargeScreenContact(),
          ],
        ),
      ),
    );
  }

  Widget _buildMainText(BuildContext context, bool isName, Size size) {
    final name = 'Fidriyanto Rizkillah.';
    final motto = 'I build things for your app.';
    if (ResponsiveWidget.isLargeScreen(context)) {
      return Text(
        isName ? name : motto,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline2!.copyWith(
              color: isName ? whiteColor : lightGrayColor,
              fontSize: headline2FontSize,
            ),
      );
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      return Text(
        isName ? name : motto,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline2!.copyWith(
            color: isName ? whiteColor : lightGrayColor, fontSize: 46),
      );
    } else {
      return Text(
        isName ? name : motto,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline2!.copyWith(
            color: isName ? whiteColor : lightGrayColor, fontSize: 36),
      );
    }
  }
}
