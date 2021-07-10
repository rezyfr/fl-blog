import 'package:flutter/material.dart';
import 'package:portofolio/common/responsive_widget.dart';
import 'package:portofolio/widget/contact_item.dart';

class SmallScreenContact extends StatelessWidget {
  const SmallScreenContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Visibility(
      visible: !ResponsiveWidget.isLargeScreen(context),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          getHorizontalAppbarMargin(context) + size.width / 8,
          size.width / 5,
          getHorizontalAppbarMargin(context) + size.width / 8,
          16
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContactItem(
              assets: 'icon_instagram.svg',
              url: 'https://www.instagram.com/rezyfr',
            ),
            ContactItem(
              assets: 'icon_twitter.svg',
              url: 'https://twitter.com/rezyfr',
            ),
            ContactItem(
              assets: 'icon_linkedin.svg',
              url: 'https://linkedin.com/in/rezyfr',
            ),
            ContactItem(
              assets: 'icon_github.svg',
              url: 'https://github.com/rezyfr',
            ),
          ],
        ),
      ),
    );
  }
}

class LargeScreenContact extends StatelessWidget {
  const LargeScreenContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 0,
      child: Visibility(
        visible: ResponsiveWidget.isLargeScreen(context),
        child: Container(
          margin: const EdgeInsets.fromLTRB(48, 24, 24, 24),
          child: Column(
            children: [
              ContactItem(
                assets: 'icon_instagram.svg',
                url: 'https://www.instagram.com/rezyfr',
              ),
              ContactItem(
                assets: 'icon_twitter.svg',
                url: 'https://twitter.com/rezyfr',
              ),
              ContactItem(
                assets: 'icon_linkedin.svg',
                url: 'https://linkedin.com/in/rezyfr',
              ),
              ContactItem(
                assets: 'icon_github.svg',
                url: 'https://github.com/rezyfr',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
