
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/common/styles.dart';
import 'package:portofolio/widget/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          HomeAppbar(),
          Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(32),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: (size.width / 10)),
              child: Row(
                children: [
                  Column(
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
                      SizedBox(
                        height: 80,
                        child: Text(
                          'Fidriyanto Rizkillah.',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: whiteColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        'I build things for your app.',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: grayColor),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        width: size.width / 2,
                        child: Text(
                          'I\'m a Jakarta-based software engineer who specializes in building exceptional mobile applications offering 2-years of experience on Android Development. '
                              '\n\nCurrently, I\'m building an impactful platform to support micro-entrepreneurs in Indonesia.'
                              ' I also expanding my area of knowledge to Back-End Development and Cloud Computing.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: grayColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
