import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'utils/app_colors.dart';
import 'widgets/custom_text.dart';

class AppLayout extends StatefulWidget {
  AppLayout({
    super.key,
    this.route,
    required this.body,
    required this.showAppBar,
    this.backArow = false,
    this.onPressed,
    this.floatingActionButton,
  });
  final String? route;
  final Widget body;
  final bool showAppBar;
  final bool backArow;
  void Function()? onPressed;
  Widget? floatingActionButton;

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightPrimaryColor,
        resizeToAvoidBottomInset: false,
        appBar: widget.showAppBar
            ? AppBar(
                backgroundColor: AppColors.lightPrimaryColor,
                elevation: 0,
                leading: widget.backArow
                    ? IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.lightPrimaryColor,
                        ),
                        onPressed: widget.onPressed,
                      )
                    : null,
                title: CustomText(
                  text: widget.route ?? '',
                  color: AppColors.primaryColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
                centerTitle: true,
              )
            : null,
        body: widget.body,
        floatingActionButton: widget.floatingActionButton,
      ),
    );
  }
}
