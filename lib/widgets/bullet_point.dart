import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/theme_selector.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint(
      {Key key,
      @required this.text,
      @required this.animationController,
      @required this.index})
      : super(key: key);
  final String text;
  final AnimationController animationController;
  final int index;

  @override
  Widget build(BuildContext context) {
    double _animationStart = 0.1 * index;
    double _animationEnd = _animationStart + 0.4;
    return SlideTransition(
      position: Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0)).animate(
          CurvedAnimation(
              parent: animationController,
              curve: Interval(_animationStart, _animationEnd,
                  curve: Curves.ease))),
      child: FadeTransition(
        opacity: animationController,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              String.fromCharCode(0x2022),
              style: TextStyle(
                  color: Color(0xff21a179),
                  fontSize: ThemeSelector.selectBodyText(context).fontSize),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Flexible(
              child: Text(
                text,
                style: ThemeSelector.selectBodyText(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
