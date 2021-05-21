import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/tab_controller_handler.dart';

class NavigationArrow extends StatelessWidget {
  const NavigationArrow({Key key, @required this.isBackArrow})
      : super(key: key);

  final bool isBackArrow;

  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabControllerHandler.of(context).tabController;
    return Padding(
      padding: isBackArrow
          ? EdgeInsets.only(left: MediaQuery.of(context).size.width*0.01)
          : EdgeInsets.only(right: MediaQuery.of(context).size.width*0.01),
      child: Align(
        alignment: isBackArrow ? Alignment.centerLeft : Alignment.centerRight,
        child: IconButton(
          icon: Icon(isBackArrow
              ? Icons.arrow_back_ios_rounded
              : Icons.arrow_forward_ios_rounded),
          onPressed: () => tabController.animateTo(
              isBackArrow ? tabController.index - 1 : tabController.index + 1),
          color: Colors.white,
          splashColor: Colors.transparent,
        ),
      ),
    );
  }
}
