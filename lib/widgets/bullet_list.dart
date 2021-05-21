import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/bullet_point.dart';


class BulletList extends StatelessWidget {
  const BulletList(
      {Key key,
        @required this.strings,
        @required this.width,
        @required this.spacing})
      : super(key: key);
  final List<String> strings;
  final double width;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    SizedBox spacer =
    SizedBox(height: MediaQuery.of(context).size.height * spacing);
    return Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(strings.length*2, (index) {
            if(index.isEven){
              return BulletPoint(text: strings[index~/2]);
            } else {
              return spacer;
            }
          }),
        ));
  }
}
