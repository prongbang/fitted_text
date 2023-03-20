library fitted_text;

import 'package:flutter/material.dart';

class FittedText extends StatelessWidget {
  final String message;
  final TextStyle? style;
  final double? width;
  final double height;
  final double widthPercent;
  final Color? backgroundColor;
  final Decoration? decoration;
  final Alignment alignment;
  final EdgeInsetsGeometry padding;

  const FittedText(
    this.message, {
    Key? key,
    this.style,
    this.height = 20,
    this.width,
    this.widthPercent = 100,
    this.backgroundColor,
    this.decoration,
    this.alignment = Alignment.centerLeft,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * (widthPercent) / 100;
    return Container(
      width: width,
      height: height,
      color: decoration != null ? null : backgroundColor,
      decoration: decoration,
      child: Padding(
        padding: padding,
        child: FittedBox(
          alignment: alignment,
          child: Text(message, style: style),
        ),
      ),
    );
  }
}
