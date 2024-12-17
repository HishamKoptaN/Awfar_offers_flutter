import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.fontFamily,
  });
  String text;
  double fontSize;
  Color? color;
  int? maxLines;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  String? fontFamily;
  @override
  Widget build(
    context,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
      ),
      overflow: TextOverflow.visible,
      softWrap: true,
      maxLines: null,
      textAlign: textAlign,
    );
  }
}
