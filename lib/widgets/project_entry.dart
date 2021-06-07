import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/project_image.dart';

class ProjectEntry extends StatelessWidget {
  const ProjectEntry({Key key, @required this.text, @required this.isMobile})
      : super(key: key);
  final String text;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: screenHeight*0.05),
      child: Column(
        crossAxisAlignment: isMobile?CrossAxisAlignment.center:CrossAxisAlignment.start,
        children: [
          ProjectImage(
            height: screenHeight * 0.2,
            width: isMobile ? screenWidth * 0.5 : screenWidth * 0.15,
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(width: isMobile?screenWidth:screenWidth * 0.2, child: Text(text))
        ],
      ),
    );
  }
}
