import 'package:awfar_offer_app/all_imports.dart';
import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.hintText,
    this.height,
    this.width,
    this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.decoration,
    this.onChanged,
  });

  final String? hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final TextEditingController? controller;
  String? Function(String?)? validator;
  InputDecoration? decoration;
  void Function(String)? onChanged;
  final double? height;
  final double? width;
  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: height ?? 75.h,
      width: width ?? 300.w,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
        obscureText: obscureText,
        onSaved: onSaved,
        validator: validator,
        keyboardType: textInputType,
        decoration: decoration ??
            InputDecoration(
              filled: true,
              fillColor: Colors.white,
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: TextStyles.bold13.copyWith(
                color: const Color(
                  0xFF949D9E,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.5.h,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1.5.h,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.5.h,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1.5.h,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1.5.h,
                ),
              ),
            ),
      ),
    );
  }
}
