import 'package:aroodi_app/core/widgets/custom_divider_widget.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/card_in_settings.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/custom_setting_widget.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/default_mode_icons_widget.dart';
import 'package:flutter/material.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "الإعدادات",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CardInSettings(
                title: "المظهر",
                subTitle: "الافتراضي",
                iconWidget: DefaultModeIconsWidget(),
              ),
            ),
            Padding(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CardInSettings(
                title: "لغة / Language",
                subTitle: "العربية",
                iconWidget: SizedBox(),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            CustomSettingWidget(
              title: "شارك التطبيق",
            ),
            CustomDividerWidget(),
            CustomSettingWidget(
              title: "قيم",
            ),
            CustomDividerWidget(),
            CustomSettingWidget(
              title: "إعدادات الإشعارات",
            ),
            CustomDividerWidget(),
            CustomSettingWidget(
              title: "إتصل بنا",
            ),
            CustomDividerWidget(),
            CustomSettingWidget(
              title: "اقتراحات",
            ),
            CustomDividerWidget(),
            CustomSettingWidget(
              title: "الشروط والأحكام",
            ),
            CustomDividerWidget(),
            CustomSettingWidget(
              title: "السياسة والخصوصية",
            ),
            CustomDividerWidget(),
            Padding(
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
            CustomDividerWidget(),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
