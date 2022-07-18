import 'package:flutter/material.dart';
import 'package:house_hunt/utils/constants.dart';
import 'package:house_hunt/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;
  const OptionButton ({Key ? key, required this.text, required this.icon, required this.width }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
    );
  }
}