import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:screens_to_design_and_implement/Screen/HomePage.dart';
import 'constants/colors.dart';
import 'Screen/Store.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp(),) );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Proxima Nova'),
      debugShowCheckedModeBanner: false,
      title: 'Task app',
      home: HomePage(showLayer: true ,),
    );
  }
}

