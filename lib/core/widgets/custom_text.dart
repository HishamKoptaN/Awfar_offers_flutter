import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double fontSize;
  Color? color;
  int? maxLines;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.visible,
      softWrap: true,
      maxLines: null,
      textAlign: textAlign,
    );
  }
}
