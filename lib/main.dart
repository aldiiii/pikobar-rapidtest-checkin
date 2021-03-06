import 'package:flutter/material.dart';
import 'package:rapid_test/constants/Colors.dart';
import 'package:rapid_test/constants/FontsFamily.dart';
import 'package:rapid_test/screen/home.dart';

import 'config/FlavorConfig.dart';
import 'environment/environment/Environment.dart';

void main() {
   FlavorConfig(
      flavor: Flavor.PRODUCTION,
      color: ColorBase.green,
      values: FlavorValues(
          baseUrl: Environment.baseUrl,));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PIKOBAR Tes Masif Checkin',
      theme: ThemeData(
          primaryColor: ColorBase.green,
          primaryColorBrightness: Brightness.dark,
          fontFamily: FontsFamily.sourceSansPro),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
