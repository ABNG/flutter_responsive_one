import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsiveone/Screens/desktop_screen.dart';
import 'package:flutterresponsiveone/Screens/mobile_screen.dart';
import 'package:flutterresponsiveone/Screens/watch_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:device_preview/device_preview.dart';
import 'Screens/tablet_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileScreen(),
      tablet: (BuildContext context) => TabletScreen(),
      desktop: (BuildContext context) => DesktopScreen(),
      watch: (BuildContext context) => WatchScreen(),
    ));
  }
}
