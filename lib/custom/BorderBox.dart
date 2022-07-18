import 'package:flutter/material.dart';
import 'package:house_hunt/utils/constants.dart';
import 'package:flutter/material.dart';

class BorderIcon extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const BorderIcon({Key ? key, required this.padding, required this.width, required this.height, 
    required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2)
      ),
      padding: padding,
      child: Center(child: child,),
    );
  }
}