import 'package:flutter/material.dart';

enum FontFamily { gtWalsheimPro }

class GlobalText extends StatelessWidget {
  final String str;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color color;
  final FontFamily? fontFamily;
  final FontStyle fontStyle;

  final double? letterSpacing;

  final TextDecoration? decoration;
  final int? maxLines;
  final TextOverflow? overflow;

  const GlobalText({
    Key? key,
    required this.str,
    this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    this.fontStyle = FontStyle.normal,
    this.color = Colors.black,
    this.letterSpacing,
    this.decoration,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontFamily: 'OpenSansCondensed',
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          decoration: decoration,
        ),
    );
  }

}
