import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {Key key,
      @required this.iconData,
      @required this.url,
      @required this.color})
      : super(key: key);
  final IconData iconData;
  final String url;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return IconButton(
      icon: FaIcon(iconData),
      onPressed: () => openURL(url),
      iconSize: screenHeight * 0.05,
      color: color,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }

  void openURL(String url) async {
    await canLaunch(url)? await launch(url) : throw 'Could not launch $url';
  }
}
