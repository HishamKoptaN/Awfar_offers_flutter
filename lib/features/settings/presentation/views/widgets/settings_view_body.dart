import 'package:awfar_offer_app/features/notifications/present/view/notifications_settings_view.dart';
import 'package:awfar_offer_app/features/notifications/present/view/notifications_view.dart';
import 'package:awfar_offer_app/features/privacy_policy_and_terms_and_conditions/presentation/views/privacy_policy_view.dart';
import 'package:awfar_offer_app/features/privacy_policy_and_terms_and_conditions/presentation/views/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_back_button.dart';
import '../../../../../core/widgets/custom_divider_widget.dart';
import '../../../../countries/data/models/countries_res_model.dart';
import 'custom_setting_widget.dart';

class SettingsViewBody extends StatefulWidget {
  const SettingsViewBody({super.key, required this.isBack});

  final bool isBack;

  @override
  State<SettingsViewBody> createState() => _SettingsViewBodyState();
}

class _SettingsViewBodyState extends State<SettingsViewBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    Future<void> launchWhatsApp({
      required String url,
    }) async {
      final Uri whatsappUrl = Uri.parse(
        url,
      );
      if (!await launchUrl(
        whatsappUrl,
        mode: LaunchMode.externalApplication,
      )) {
        throw Exception(
          'Could not launch $url',
        );
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              isBack: widget.isBack,
              title: "الإعدادات",
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomDividerWidget(),
            CustomSettingWidget(
              title: "شارك التطبيق",
              onTap: () async {
                await shareTheApp();
              },
            ),
            const CustomDividerWidget(),
            CustomSettingWidget(
              title: " الإشعارات",
              onTap: () async {
                Navigator.pushNamed(
                  context,
                  NotificationsView.routeName,
                );
              },
            ),
            const CustomDividerWidget(),
            CustomSettingWidget(
              title: "إعدادات الإشعارات",
              onTap: () async {
                Navigator.pushNamed(
                  context,
                  NotificationsSettingsView.routeName,
                );
              },
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 8),
            //   child: CardInSettings(
            //     title: "المظهر",
            //     subTitle: "الافتراضي",
            //     iconWidget: DefaultModeIconsWidget(),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8),
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 16,
            //       vertical: 16,
            //     ),
            //     child: GestureDetector(
            //       child: Row(
            //         children: [
            //           _buildCountrySelector(),
            //           const Spacer(),
            //           const Icon(
            //             Icons.arrow_forward_ios,
            //             size: 16,
            //             color: AppColors.lightPrimaryColor,
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 8),
            //   child: CardInSettings(
            //     title: "لغة / Language",
            //     subTitle: "العربية",
            //     iconWidget: SizedBox(),
            //   ),
            // ),
            const SizedBox(
              height: 8,
            ),
            // const CustomSettingWidget(
            //   title: "شارك التطبيق",
            // ),
            // const CustomDividerWidget(),
            // const CustomSettingWidget(
            //   title: "قيم",
            // ),
            // const CustomDividerWidget(),
            // const CustomSettingWidget(
            //   title: "إعدادات الإشعارات",
            // ),
            const CustomDividerWidget(),
            CustomSettingWidget(
              title: "إتصل بنا",
              onTap: () async {
                await launchWhatsApp(
                  url: "https://wa.me/+249124582020",
                );
              },
            ),
            const CustomDividerWidget(),

            CustomSettingWidget(
              title: "الشروط والأحكام",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  TermsAndConditions.routeName,
                );
              },
            ),
            const CustomDividerWidget(),
            CustomSettingWidget(
              title: "سياسة الخصوصية",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PrivacyPolicyView.routeName,
                );
              },
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
                    "v1.0.0",
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

  // Widget _buildCountrySelector() {
  //   return BlocConsumer<CountriesBloc, CountriesState>(
  //     listener: (context, state) {},
  //     builder: (context, state) {
  //       return state.maybeWhen(
  //         countriesloaded: (countries, se) {
  //           return GestureDetector(
  //             onTap: () {
  //               _showCountrySelection(
  //                 countries,
  //               );
  //             },
  //             child: selectedCountryId != null
  //                 ? CountryFlag.fromCountryCode(
  //                     countries
  //                         .where(
  //                           (country) => country.id == selectedCountryId,
  //                         )
  //                         .first
  //                         .code!,
  //                     width: 30,
  //                     height: 20,
  //                     shape: const RoundedRectangle(6),
  //                   )
  //                 : const Text(
  //                     "select Country",
  //                     style: TextStyle(color: Colors.white),
  //                     textAlign: TextAlign.center,
  //                   ),
  //           );
  //         },
  //         loading: () {
  //           return const CircularProgressIndicator();
  //         },
  //         orElse: () {
  //           return const CircularProgressIndicator();
  //         },
  //       );
  //     },
  //   );
  // }

  void _showCountrySelection(
    List<Country> countries,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primaryColor,
          ),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              const Text('إختر البلد', style: TextStyles.bold18),
              const CustomDividerWidget(),
              Expanded(
                child: ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    final country = countries[index];
                    return GestureDetector(
                      onTap: () async {
                        await SharedPrefHelper.setData(
                          key: SharedPrefKeys.countryId,
                          value: country.id,
                        );
                        setState(
                          () {},
                        );
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          countries[index].code!,
                          style: TextStyles.bold14,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> shareTheApp() async {
    Share.share(
      'اكتشف عروضاً مذهلة للسوبر ماركت، الإلكترونيات، والأزياء مع تطبيق Awfar Offer! 🛒💻👗\n\nتوفير كبير بانتظارك! حمل الآن:\nhttps://play.google.com/store/apps/details?id=com.awfaroffers.app',
      subject: 'عروض مذهلة في انتظارك!',
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.isBack,
    required this.title,
  });

  final bool isBack;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          isBack ? const CustomBackButton() : const SizedBox(),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
