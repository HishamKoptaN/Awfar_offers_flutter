// import 'package:country_flags/country_flags.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../features/get_countries_and_cities/logic/get_countries_cubit.dart';
// import '../../features/get_countries_and_cities/logic/get_countries_state.dart';

// Widget buildCountrySelector() {
//   return BlocConsumer<GetCountriesCubit, GetCountriesState>(
//     listener: (context, state) {},
//     builder: (context, state) {
//       if (state is GetCountriesLoading) {
//         return const CircularProgressIndicator();
//       } else if (state is GetCountriesSuccess) {
//         return GestureDetector(
//           onTap: () {
//             _showCountrySelection(
//               state.getCountriesModel,
//             );
//           },
//           child: selectedCountryId != null
//               ? CountryFlag.fromCountryCode(
//                   state.getCountriesModel
//                       .where(
//                         (country) => country.id == selectedCountryId,
//                       )
//                       .first
//                       .code,
//                   width: 30,
//                   height: 20,
//                   shape: const RoundedRectangle(6),
//                 )
//               : const Text(
//                   "select Country",
//                   style: TextStyle(color: Colors.white),
//                   textAlign: TextAlign.center,
//                 ),
//         );
//       } else {
//         return const Text(
//           "unknown",
//           style: TextStyle(color: Colors.white),
//         );
//       }
//     },
//   );
// }
