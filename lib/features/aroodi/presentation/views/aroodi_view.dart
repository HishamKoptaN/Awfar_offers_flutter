import 'package:aroodi_app/features/aroodi/presentation/views/widgets/aroodi_view_body.dart';
import 'package:flutter/material.dart';

class AroodiView extends StatelessWidget {
  const AroodiView({super.key});
  static const routeName = 'aroodi';

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: AroodiViewBody(),
      ),
    );
  }
}
