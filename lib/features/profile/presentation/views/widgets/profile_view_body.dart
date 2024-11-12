import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/profile/presentation/views/widgets/custom_personal_list.dart';
import 'package:aroodi_app/features/profile/presentation/views/widgets/icon_and_text_widget.dart';
import 'package:aroodi_app/features/profile/presentation/views/widgets/tools_widget.dart';
import 'package:aroodi_app/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.lightPrimaryColor,
                  radius: 36,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: AppColors.darkPrimaryColor,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpeg"),
                      radius: 31,
                    ),
                  ),
                ),
                const Text(
                  "مرحبا بك في مركز أعضاء Awfar Offer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SettingsView.routeName,
                      arguments: true,
                    );
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconAndTextWidget(
                  iconData: Icons.login_outlined,
                  title: "تسجيل الدخول",
                  onTap: () {},
                ),
                IconAndTextWidget(
                  iconData: Icons.notifications_none_outlined,
                  title: "إشعار",
                  onTap: () {},
                ),
                IconAndTextWidget(
                  iconData: Icons.bookmark_outline_outlined,
                  title: "الإشارات المرجعية",
                  onTap: () {},
                ),
                IconAndTextWidget(
                  iconData: Icons.settings_outlined,
                  title: "الإعدادات",
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      SettingsView.routeName,
                      arguments: true,
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "الأدوات",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ToolsWidget(
                  iconData: Icons.qr_code_outlined,
                  title: "الباركود",
                ),
                ToolsWidget(
                  iconData: Icons.sports_soccer_outlined,
                  title: "إس أو إس",
                ),
                ToolsWidget(
                  iconData: Icons.place_outlined,
                  title: "منافذ",
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "قائمة شخصية",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const CustomPersonalList(
              headerTitle: "قائمة التسوق",
              title: "لم تستخدم قائمة التسوق بعد",
              subTitle: "أنشىء قائمة التسوق وشاركها لتسهيل تسوقك.",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomPersonalList(
              headerTitle: "الضمان",
              title: "لم تضف أي إيصالات بعد",
              subTitle: "أضف إيصالك أو بطاقة الضمان, حتى لاتفقدها",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomPersonalList(
              headerTitle: "بطاقة الولاء",
              title: "احفظ بطاقات الولاء الخاصة بك",
              subTitle: "استخدم هذة الميزة حتى لا تضطر الى حملها بعد الأن",
            ),
          ],
        ),
      ),
    );
  }
}
