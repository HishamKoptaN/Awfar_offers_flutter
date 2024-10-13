import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/core/utils/app_text_styles.dart';
import 'package:aroodi_app/core/widgets/custom_divider_widget.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class BuildAppBarWidget extends StatefulWidget {
  const BuildAppBarWidget({
    super.key,
  });

  @override
  State<BuildAppBarWidget> createState() => _BuildAppBarWidgetState();
}

class _BuildAppBarWidgetState extends State<BuildAppBarWidget> {
  String selectedCountry = 'مصر';
  String selectedCity = 'اختر المدينة';
  String? selectedCountryCode = 'EG';

  final Map<String, List<String>> countryCityMap = {
    'البحرين': [
      '',
    ],
    'قطر': [
      'الدوحة',
      'الريان',
      'الوكرة',
      'الخور',
      'الشمال',
      'الشحانية',
      'أم صلال',
      'الضعاين',
    ],
    'الكويت': [
      'مدينة الكويت',
      'محافظة الأحمدي',
      'محافظة الجهراء',
    ],
    'عمان': [
      'مسقط',
      'صلالة',
      'ضحار',
      'عبري',
      'نزوى',
    ],
    'المملكة العربية السعودية': [
      'الدمام',
      'جدة',
      'الرياض',
      'حفر الباطن',
      'حائل',
      'الأحسام',
      'الجبيل',
      'الخبر',
      'مكة المكرمة',
      'المدينة المنورة',
      'الطائف',
      'بريدة',
      'تبوك',
    ],
    'الإمارات العربية المتحدة': [
      'دبي',
      'أبو ظبي',
      'الشارقة / عجمان',
      'العين',
      'الفجيرة',
      'رأس الخيمة',
      'أم القيوين',
    ],
    'مصر': [
      'القاهرة',
    ],
  };

  final Map<String, String> countryCodeMap = {
    'البحرين': 'BH',
    'قطر': 'QA',
    'الكويت': 'KW',
    'عمان': 'OM',
    'المملكة العربية السعودية': 'SA',
    'الإمارات العربية المتحدة': 'AE',
    'مصر': 'EG',
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        top: 8,
      ),
      child: Row(
        children: [
          Text(
            "Awfar Offer",
            style:
                TextStyles.bold13.copyWith(color: AppColors.lightPrimaryColor),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showCountrySelection();
                    },
                    child: selectedCountryCode != null
                        ? CountryFlag.fromCountryCode(
                            selectedCountryCode!,
                            width: 30,
                            height: 20,
                            shape: const RoundedRectangle(6),
                          )
                        : Text(
                            selectedCountry,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showCitySelection();
                    },
                    child: Text(
                      selectedCity,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down_sharp,
                    color: AppColors.lightPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCountrySelection() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primaryColor,
          ),
          height: MediaQuery.of(context).size.height * 0.5,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'إختر البلد',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomDividerWidget(),
                Expanded(
                  child: ListView(
                    children: countryCityMap.keys.map((String country) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCountry = country;
                            selectedCity = 'اختر المدينة';
                            selectedCountryCode = countryCodeMap[
                                country]; // Reset city when country changes
                          });
                          Navigator.pop(context);
                          countryCityMap[country]!.first == ''
                              ? selectedCity = country
                              : _showCitySelection();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                          child: Text(
                            country,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showCitySelection() {
    if (selectedCountry == 'اختر الدولة') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('من فضلك اختر الدولة اولا'),
        ),
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        List<String> cities = countryCityMap[selectedCountry] ?? [];
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primaryColor,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'إختر المنطقة',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomDividerWidget(),
                Expanded(
                  child: ListView(
                    children: cities.map((String city) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCity = city;
                          });
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                          child: Text(
                            city,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
