import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/theme_selector.dart';


class BulletPoint extends StatelessWidget {
  const BulletPoint({Key key, @required this.text})
      : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          String.fromCharCode(0x2022),
          style: TextStyle(color: Color(0xff21a179), fontSize:  ThemeSelector.selectBodyText(context).fontSize),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Flexible(
            child: Text(
              text,
              style: ThemeSelector.selectBodyText(context),
            ))
      ],
    );
  }
}

