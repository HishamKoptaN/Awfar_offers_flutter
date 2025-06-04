import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';
import 'custom_text.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    super.key,
    required this.onPressed,
    this.text,
    this.buttonColor = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.widget,
    this.height,
    this.width,
  });
  final void Function()? onPressed;
  final String? text;
  final Color buttonColor;
  final Color textColor;
  final Widget? widget;
  final double? height;
  final double? width;
  @override
  Widget build(context) {
    return SizedBox(
      height: height ?? 65.h,
      width: width ?? 300.w,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: AppColors.primaryColor,
        ),
        onPressed: onPressed,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(
              5.sp,
            ),
            child: widget ??
                CustomText(
                  text: text ?? "",
                  color: textColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
