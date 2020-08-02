import 'package:flutter/material.dart';
import 'package:flutterresponsiveone/utils/Text_Widget.dart';
import 'package:flutterresponsiveone/utils/screen_size.dart';

class TabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return Container(
      color: Colors.red,
      child: Padding(
          padding: EdgeInsets.all(screenSize.screenWidth / 8.0),
          child: TextWidget(
            text: "Landscape",
            type: "tablet",
          )),
    );
  }
}
