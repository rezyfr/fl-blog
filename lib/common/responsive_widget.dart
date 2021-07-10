import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1008;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 641 &&
        MediaQuery.of(context).size.width <= 1007;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 640;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1008) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1007 &&
            constraints.maxWidth >= 641) {
          return mediumScreen ?? SizedBox.shrink();
        } else {
          return smallScreen ?? SizedBox.shrink();
        }
      },
    );
  }
}


double getHorizontalAppbarMargin(BuildContext context) {
  if (ResponsiveWidget.isLargeScreen(context)) {
    return 200.0;
  } else if (ResponsiveWidget.isMediumScreen(context)) {
    return 125.0;
  } else {
    return 25.0;
  }
}