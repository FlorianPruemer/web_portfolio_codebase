import 'package:flutter/material.dart';
import 'package:portfolio_website/content_view.dart';
import 'package:portfolio_website/custom_tab.dart';
import 'package:portfolio_website/custom_tab_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  double screenHeight;
  double screenWidth;
  double topPadding;
  double bottomPadding;

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: Center(
          child: Container(color: Colors.green, width: 100, height: 100)),
    ),
    ContentView(
      tab: CustomTab(title: 'About'),
      content:
      Center(child: Container(color: Colors.blue, width: 100, height: 100)),
    ),
    ContentView(
      tab: CustomTab(title: 'Projects'),
      content:
      Center(child: Container(color: Colors.red, width: 100, height: 100)),
    )
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
            controller: tabController,
            tabs: contentViews.map((e) => e.tab).toList()),
        Container(
          height: screenHeight * 0.85,
          child: TabBarView(
            controller: tabController,
            children: contentViews.map((e) => e.content).toList(),
            physics: NeverScrollableScrollPhysics(),
          ),
        )
      ],
    );
  }

  Widget mobileView() {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05),
      child: Container(
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                iconSize: screenWidth * 0.08,
                icon: Icon(Icons.menu_rounded),
                color: Colors.white,
                onPressed: () => scaffoldKey.currentState.openEndDrawer())
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [Container(height: screenHeight * 0.1)] +
            contentViews
                .map((e) => Container(
              child: ListTile(
                title: Text(e.tab.title),
                onTap: () {},
              ),
            ))
                .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    topPadding = screenHeight * 0.05;
    bottomPadding = screenHeight * 0.01;

    print(screenWidth);
    return Scaffold(
      backgroundColor: Color(0xff1e1e24),
      key: scaffoldKey,
      endDrawer: drawer(),
      body: Padding(
        padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 715) {
            return desktopView();
          } else {
            return mobileView();
          }
        }),
      ),
    );
  }
}
