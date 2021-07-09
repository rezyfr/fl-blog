import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/common/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactItem extends StatefulWidget {
  const ContactItem({
    Key? key,
    required this.assets,
    this.marginBottom,
    required this.url,
  }) : super(key: key);
  final String assets;
  final double? marginBottom;
  final String url;

  @override
  State<ContactItem> createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem>
    with SingleTickerProviderStateMixin {
  Color iconColor = lightGrayColor;
  final double upperIconScale = 1.0;
  final double lowerIconScale = 0.7;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: lowerIconScale,
      upperBound: upperIconScale,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: widget.marginBottom ?? 24),
      child: ScaleTransition(
        scale: _animation,
        child: InkWell(
          onHover: (hover) {
            setState(() {
              _setIconHover(hover);
            });
          },
          child: SvgPicture.asset(
            widget.assets,
            color: iconColor,
          ),
          onTap: () => _launchURL(),
        ),
      ),
    );
  }

  _setIconHover(bool hover) {
    if (hover) {
      iconColor = cyanColor;
      _controller.forward();
    } else {
      iconColor = lightGrayColor;
      _controller.reverse();
    }
  }

  _launchURL() async {
    if (await canLaunch(widget.url)) {
      await launch(widget.url);
    } else {
      throw 'Could not launch ${widget.url}';
    }
  }
}
