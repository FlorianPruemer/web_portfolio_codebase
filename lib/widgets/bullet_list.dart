import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/bullet_point.dart';

class BulletList extends StatefulWidget {
  const BulletList({Key key, @required this.strings}) : super(key: key);
  final List<String> strings;

  @override
  _BulletListState createState() => _BulletListState();
}

class _BulletListState extends State<BulletList>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    Timer(Duration(milliseconds: 200), () => _animationController.forward());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.strings.length * 2, (index) {
        if (index.isEven) {
          return Flexible(
              flex: 2,
              child: BulletPoint(
                text: widget.strings[index ~/ 2],
                animationController: _animationController,
                index: index ~/ 2,
              ));
        } else {
          return Spacer(flex: 1);
        }
      }),
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
