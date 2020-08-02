import 'package:flutter/material.dart';
import 'package:flutterresponsiveone/Orientation/tablet_landscape.dart';
import 'package:flutterresponsiveone/Orientation/tablet_portrait.dart';

class TabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait)
      return TabletPortrait();
    else if (MediaQuery.of(context).orientation == Orientation.landscape)
      return TabletLandscape();
    else
      return null;
  }
}
