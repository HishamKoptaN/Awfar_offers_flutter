import 'package:awfar_offer_app/core/widgets/custom_back_button.dart';
import 'package:awfar_offer_app/layouts/adaptive_layout_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class NotificationsSettingsView extends StatefulWidget {
  const NotificationsSettingsView({
    super.key,
  });
  static const String routeName = 'notifications_settings_view';

  @override
  State<NotificationsSettingsView> createState() =>
      _NotificationsSettingsViewState();
}

class _NotificationsSettingsViewState extends State<NotificationsSettingsView> {
  bool turnAllOn = false;
  bool disableAll = false;
  bool isCheck = false;
  @override
  Widget build(
    context,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomBackButton(),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "إعدادات الإشعارات",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "تشغيل الكل",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: AppColors.lightPrimaryColor,
                      inactiveTrackColor: AppColors.primaryColor,
                      value: turnAllOn,
                      onChanged: (value) {
                        setState(() {
                          turnAllOn = value;
                          disableAll = false;
                          isCheck = value;
                        });
                      },
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "تعطيل الكل",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: AppColors.lightPrimaryColor,
                      inactiveTrackColor: AppColors.primaryColor,
                      splashRadius: 12,
                      value: disableAll,
                      onChanged: (value) {
                        setState(() {
                          disableAll = value;
                          turnAllOn = false;
                          isCheck = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
                child: AdaptiveLayout(
                  mobileLayout: (context) => GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/royal_icon.jpeg",
                              width: MediaQuery.sizeOf(context).width * 0.25,
                            ),
                            const Spacer(),
                            const Text(
                              "كارفور",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.3,
                              height: 1,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  isCheck == true
                                      ? Icons.notifications_none_outlined
                                      : Icons.notifications_off_outlined,
                                  color: Colors.grey[400],
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  "إشعار",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                Checkbox(
                                  activeColor: AppColors.lightPrimaryColor,
                                  checkColor: Colors.black,
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 1.5,
                                  ),
                                  value: isCheck,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheck = value!;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  tabletLayout: (context) => GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/royal_icon.jpeg",
                              width: MediaQuery.sizeOf(context).width * 0.25,
                            ),
                            const Spacer(),
                            const Text(
                              "كارفور",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.3,
                              height: 1,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  isCheck == true
                                      ? Icons.notifications_none_outlined
                                      : Icons.notifications_off_outlined,
                                  color: Colors.grey[400],
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  "إشعار",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                Checkbox(
                                  activeColor: AppColors.lightPrimaryColor,
                                  checkColor: Colors.black,
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 1.5,
                                  ),
                                  value: isCheck,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheck = value!;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  webLayout: (context) => GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6, // Number of columns in the grid
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/royal_icon.jpeg",
                              width: MediaQuery.sizeOf(context).width * 0.1,
                            ),
                            const Spacer(),
                            const Text(
                              "كارفور",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.3,
                              height: 1,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  isCheck == true
                                      ? Icons.notifications_none_outlined
                                      : Icons.notifications_off_outlined,
                                  color: Colors.grey[400],
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  "إشعار",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                Checkbox(
                                  activeColor: AppColors.lightPrimaryColor,
                                  checkColor: Colors.black,
                                  side: const BorderSide(
                                    color: Colors.grey,
                                    width: 1.5,
                                  ),
                                  value: isCheck,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheck = value!;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
