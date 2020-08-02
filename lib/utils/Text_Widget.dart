import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutterresponsiveone/utils/screen_size.dart';

class TextWidget extends StatelessWidget {
  final text;
  final type;

  TextWidget({this.text, this.type});

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize(context);
    return AutoSizeText(
      "$type with $text with width: ${screenSize.screenWidth} and height: ${screenSize.screenHeight}",
      style: TextStyle(
        fontSize: 290.0,
      ),
      maxLines: 30,
    );
  }
}
