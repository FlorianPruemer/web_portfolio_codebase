import 'package:flutter/material.dart';

class ViewWrapper extends StatelessWidget {
  const ViewWrapper(
      {Key key, @required this.desktopView, @required this.mobileView})
      : super(key: key);
  final Widget desktopView;
  final Widget mobileView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 715 && MediaQuery.of(context).size.height >550) {
        return desktopView;
      } else {
        return mobileView;
      }
    });
  }
}
