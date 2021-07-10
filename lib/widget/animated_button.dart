import 'package:flutter/material.dart';
import 'package:portofolio/common/styles.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.padding,
  }) : super(key: key);

  final String text;
  final VoidCallback onPress;
  final double? padding;

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
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
    return InkWell(
      onHover: (hover) {
        if (hover) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
      },
      onTap: () {},
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
                      padding: EdgeInsets.all(widget.padding ?? 16.0),
                      primary: _textColorTween.value,
                      textStyle: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () => widget.onPress,
                    child: Text(widget.text),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
