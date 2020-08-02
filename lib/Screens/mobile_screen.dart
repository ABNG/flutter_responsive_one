import 'package:flutter/material.dart';
import 'package:flutterresponsiveone/Orientation/mobile_landscape.dart';
import 'package:flutterresponsiveone/Orientation/mobile_portrait.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait)
      return MobilePortrait();
    else if (MediaQuery.of(context).orientation == Orientation.landscape)
      return MobileLandscape();
    else
      return null;
  }
}
