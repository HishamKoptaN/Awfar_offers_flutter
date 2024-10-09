import 'package:aroodi_app/core/helper_functions/on_generate_routes.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/aroodi_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AroodiApp());
}

class AroodiApp extends StatelessWidget {
  const AroodiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: AroodiView.routeName,
    );
  }
}
