import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({Key key, @required this.height, @required this.width}) : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.grey,
            child: Center(child: Text('PLACEHOLDER IMAGE')),
          )),
    );
  }
}
