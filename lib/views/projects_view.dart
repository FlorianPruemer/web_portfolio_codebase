import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/view_wrapper.dart';
import 'package:portfolio_website/widgets/navigation_arrow.dart';


class ProjectsView extends StatefulWidget {
  const ProjectsView({Key key}) : super(key: key);

  @override
  _ProjectsViewState createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  double screenWidth;
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return ViewWrapper(
      desktopView: desktopView(),
      mobileView: mobileView(),
    );
  }

  Widget desktopView() {
    return Stack(
      children: [
        NavigationArrow(isBackArrow: true),
        Container(),
      ],
    );
  }

  Widget mobileView() {
    return Container();
  }
}
