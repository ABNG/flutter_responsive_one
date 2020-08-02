import 'package:flutter/material.dart';
import 'package:flutterresponsiveone/utils/Text_Widget.dart';
import 'package:flutterresponsiveone/utils/screen_size.dart';

class DesktopPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return Container(
      color: Colors.blue,
      child: Padding(
          padding: EdgeInsets.all(screenSize.screenWidth / 8.0),
          child: TextWidget(
            text: "Portrait",
            type: "desktop",
          )),
    );
  }
}
