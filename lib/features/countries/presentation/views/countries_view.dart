// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../core/di/dependency_injection.dart';
// import '../../../../core/widgets/custom_circular_progress.dart';
// import '../bloc/categories_bloc.dart';
// import '../bloc/categories_state.dart';
// import 'widgets/category_view_body.dart';

// class CategoriesView extends StatelessWidget {
//   const CategoriesView({
//     super.key,
//     required this.brandName,
//   });
//   static const String routeName = 'categories_view';
//   final String brandName;
//   @override
//   Widget build(
//     context,
//   ) {
//     return SafeArea(
//       child: Scaffold(
//         body: BlocProvider(
//           create: (context) => getIt<CategoriesBloc>(),
//           child: BlocConsumer<CategoriesBloc, CategoriesState>(
//             listener: (context, state) {},
//             builder: (context, state) {
//               return state.maybeWhen(
//                 categoriesloaded: (categories) {
//                   return CategoryViewBody(
//                     brandName: brandName,
//                     categories: categories,
//                   );
//                 },
//                 orElse: () {
//                   return const CustomCircularProgress();
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
