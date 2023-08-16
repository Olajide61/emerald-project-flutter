import 'package:flutter/material.dart';

class CustomisedText extends StatelessWidget {
  const CustomisedText(
    this.text, {
    super.key,
    this.color,
    this.letterSpacing,
    this.height,
    this.align,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.blur = false,
    this.fontSize = 14,
    this.fontFamily,
    this.fontStyle,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final double? letterSpacing;
  final double? height;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final bool blur;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: true,
      style: TextStyle(
        fontFamily: 'Open Sans',
        color: color,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        height: height,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
