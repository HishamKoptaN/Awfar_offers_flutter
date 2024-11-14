
//   import 'package:flutter/material.dart';

// import '../features/get_countries_and_cities/data/models/get_countries_model.dart';
// import 'networking/shared_pref.dart';
// import 'utils/app_colors.dart';
// import 'utils/app_text_styles.dart';
// import 'widgets/custom_divider_widget.dart';

// void _showCountrySelection(List<GetCountriesModel> countries,context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(16),
//               topRight: Radius.circular(16),
//             ),
//             color: AppColors.primaryColor,
//           ),
//           height: MediaQuery.of(context).size.height * 0.5,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 8),
//               const Text('إختر البلد', style: TextStyles.bold18),
//               const CustomDividerWidget(),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: countries.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         setState(
//                           () {
//                             selectedCity = 'اختر المدينة';
//                             selectedCountryCode = countries[index].code;
//                             selectedCountryId = countries[index].id;
//                             Prefs.setInt(
//                               SharedPrefKeys.countryId,
//                               selectedCountryId,
//                             );
//                             Prefs.setString(
//                               SharedPrefKeys.countryCode,
//                               selectedCountryCode!,
//                             );
//                           },
//                         );
//                         Navigator.pop(context);
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 16, horizontal: 8),
//                         child: Text(
//                           countries[index].code,
//                           style: TextStyles.bold14,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _showCitySelection(List<GetCityModel> cities) {
//     List<GetCityModel> filteredCities = cities
//         .where((city) =>
//             city.countryId ==
//             Prefs.getInt(
//               SharedPrefKeys.countryId,
//             ))
//         .toList();
//     showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Container(
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(16),
//               topRight: Radius.circular(16),
//             ),
//             color: AppColors.primaryColor,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text('إختر المنطقة', style: TextStyles.bold18),
//               const CustomDividerWidget(),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: filteredCities.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () async {
//                         setState(
//                           () {
//                             selectedCity = filteredCities[index].name;
//                             Prefs.setString(
//                               SharedPrefKeys.cityName,
//                               selectedCity,
//                             );
//                           },
//                         );
//                         Navigator.pop(context);
//                         getIt<OffersBloc>().add(
//                           OffersEvent.getOffers(
//                             governorateId: Prefs.getInt(
//                               SharedPrefKeys.countryId,
//                             ),
//                           ),
//                         );
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 16, horizontal: 8),
//                         child: Text(
//                           filteredCities[index].name,
//                           style: TextStyles.bold14,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }