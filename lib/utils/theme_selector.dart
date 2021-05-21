import 'package:flutter/material.dart';

class ThemeSelector{
  static TextStyle selectHeadline(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if(screenWidth > 950 && screenHeight > 550){
      return Theme.of(context).textTheme.headline1;
    } else if (screenWidth > 650 && screenHeight > 550){
      return Theme.of(context).textTheme.headline2;
    } else {
      return Theme.of(context).textTheme.headline3;
    }
  }

  static TextStyle selectSubHeadline(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if(screenWidth > 715 && screenHeight > 350){
      return Theme.of(context).textTheme.subtitle1;
    } else {
      return Theme.of(context).textTheme.subtitle2;
    }
  }
  static TextStyle selectBodyText(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if(screenWidth > 1050 && screenHeight > 850){
      return Theme.of(context).textTheme.bodyText1;
    } else if(screenWidth > 850 && screenHeight > 700){
      return Theme.of(context).textTheme.bodyText2;
    } else {
      return Theme.of(context).textTheme.caption;
    }
  }

}