import 'package:flutter/material.dart';
import 'package:flutterresponsiveone/Orientation/desktop_landscape.dart';
import 'package:flutterresponsiveone/Orientation/desktop_portrait.dart';

class DesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait)
      return DesktopPortrait();
    else if (MediaQuery.of(context).orientation == Orientation.landscape)
      return DesktopLandscape();
    else
      return null;
  }
}
