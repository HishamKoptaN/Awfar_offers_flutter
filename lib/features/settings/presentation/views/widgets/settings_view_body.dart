import 'package:aroodi_app/core/widgets/custom_back_button.dart';
import 'package:aroodi_app/core/widgets/custom_divider_widget.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/card_in_settings.dart';
import 'package:aroodi_app/features/settings/presentation/views/widgets/custom_setting_widget.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../get_countries_and_cities/data/models/get_countries_model.dart';
import '../../../../get_countries_and_cities/logic/get_countries_cubit.dart';
import '../../../../get_countries_and_cities/logic/get_countries_state.dart';

class SettingsViewBody extends StatefulWidget {
  const SettingsViewBody({super.key, required this.isBack});

  final bool isBack;

  @override
  State<SettingsViewBody> createState() => _SettingsViewBodyState();
}

class _SettingsViewBodyState extends State<SettingsViewBody> {
  int? selectedCountryId;
  int? selectedGovernorateId;

  @override
  void initState() {
    super.initState();
    _initializeGovernorate();
  }

  void _initializeGovernorate() async {
    selectedGovernorateId = await SharedPrefHelper.getInt(
      key: SharedPrefKeys.governorateId,
    );
    setState(() {});
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
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  widget.isBack ? const CustomBackButton() : const SizedBox(),
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
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 8),
            //   child: CardInSettings(
            //     title: "المظهر",
            //     subTitle: "الافتراضي",
            //     iconWidget: DefaultModeIconsWidget(),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: GestureDetector(
                  child: Row(
                    children: [
                      _buildCountrySelector(),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColors.lightPrimaryColor,
                      )
                    ],
                  ),
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
            // const CustomSettingWidget(
            //   title: "اقتراحات",
            // ),
            // const CustomDividerWidget(),
            // const CustomSettingWidget(
            //   title: "الشروط والأحكام",
            // ),
            // const CustomDividerWidget(),
            // const CustomSettingWidget(
            //   title: "السياسة والخصوصية",
            // ),
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

  Widget _buildCountrySelector() {
    return BlocConsumer<GetCountriesCubit, GetCountriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetCountriesLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetCountriesSuccess) {
          return GestureDetector(
            onTap: () {
              _showCountrySelection(
                state.getCountriesModel,
              );
            },
            child: selectedCountryId != null
                ? CountryFlag.fromCountryCode(
                    state.getCountriesModel
                        .where(
                          (country) => country.id == selectedCountryId,
                        )
                        .first
                        .code,
                    width: 30,
                    height: 20,
                    shape: const RoundedRectangle(6),
                  )
                : const Text(
                    "select Country",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          );
        } else {
          return const Text(
            "unknown",
            style: TextStyle(color: Colors.white),
          );
        }
      },
    );
  }

  void _showCountrySelection(
    List<GetCountriesModel> countries,
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
                          countries[index].code,
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
}
