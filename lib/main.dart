import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:house_hunt/utils/constants.dart';
import 'package:house_hunt/screens/LandingScreen.dart';
import 'package:house_hunt/custom/BorderBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'House Hunters',
        theme: ThemeData(
            primaryColor: COLOR_WHITE,
            accentColor: COLOR_DARK_BLUE,
            textTheme:
                screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
            fontFamily: "Montserrat"),
        home: LandingScreen());
  }
}
