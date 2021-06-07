import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/theme_selector.dart';

class CustomTab extends StatelessWidget {
  CustomTab({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(this.title,
            style: TextStyle(fontSize: 16)));
  }
}
