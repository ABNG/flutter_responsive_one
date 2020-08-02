import 'package:flutter/material.dart';
import 'package:flutterresponsiveone/Orientation/watch_landscape.dart';
import 'package:flutterresponsiveone/Orientation/watch_portrait.dart';

class WatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait)
      return WatchPortrait();
    else if (MediaQuery.of(context).orientation == Orientation.landscape)
      return WatchLandscape();
    else
      return null;
  }
}
