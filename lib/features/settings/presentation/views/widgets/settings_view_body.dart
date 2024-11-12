import 'package:aroodi_app/core/widgets/custom_back_button.dart';
import 'package:aroodi_app/core/widgets/custom_divider_widget.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/card_in_settings.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/custom_setting_widget.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/default_mode_icons_widget.dart';
import 'package:flutter/material.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key, required this.isBack});

  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  isBack ? const CustomBackButton() : const SizedBox(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "الإعدادات",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CardInSettings(
                title: "المظهر",
                subTitle: "الافتراضي",
                iconWidget: DefaultModeIconsWidget(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CardInSettings(
                title: "بلد",
                subTitle: "القاهرة",
                iconWidget: Icon(
                  Icons.image,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CardInSettings(
                title: "لغة / Language",
                subTitle: "العربية",
                iconWidget: SizedBox(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomSettingWidget(
              title: "شارك التطبيق",
            ),
            const CustomDividerWidget(),
            const CustomSettingWidget(
              title: "قيم",
            ),
            const CustomDividerWidget(),
            const CustomSettingWidget(
              title: "إعدادات الإشعارات",
            ),
            const CustomDividerWidget(),
            const CustomSettingWidget(
              title: "إتصل بنا",
            ),
            const CustomDividerWidget(),
            const CustomSettingWidget(
              title: "اقتراحات",
            ),
            const CustomDividerWidget(),
            const CustomSettingWidget(
              title: "الشروط والأحكام",
            ),
            const CustomDividerWidget(),
            const CustomSettingWidget(
              title: "السياسة والخصوصية",
            ),
            const CustomDividerWidget(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Text(
                    "Version",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "v10.0.62",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const CustomDividerWidget(),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
