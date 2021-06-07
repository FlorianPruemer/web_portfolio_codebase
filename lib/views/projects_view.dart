import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/theme_selector.dart';
import 'package:portfolio_website/utils/view_wrapper.dart';
import 'package:portfolio_website/widgets/navigation_arrow.dart';
import 'package:portfolio_website/widgets/project_entry.dart';


class ProjectsView extends StatefulWidget {
  const ProjectsView({Key key}) : super(key: key);

  @override
  _ProjectsViewState createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  double screenWidth;
  double screenHeight;
  String loremIpsum =
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.';

  @override
  void initState() {
    super.initState();
  }

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
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectEntry(text: loremIpsum,isMobile: false),
              ProjectEntry(text: loremIpsum,isMobile: false),
              ProjectEntry(text: loremIpsum,isMobile: false),
              ProjectEntry(text: loremIpsum,isMobile: false),
            ],
          ),
        )
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        SizedBox(height: screenHeight*0.05),
        Text('Projects', style: ThemeSelector.selectHeadline(context),),
        ProjectEntry(text: loremIpsum,isMobile: true,),
        ProjectEntry(text: loremIpsum,isMobile: true,),
        ProjectEntry(text: loremIpsum,isMobile: true,),
        ProjectEntry(text: loremIpsum,isMobile: true,),
      ],
    );
  }
}
