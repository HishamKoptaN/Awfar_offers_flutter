import 'package:aroodi_app/features/offers/presentation/views/widgets/aroodi_view_body_details.dart';
import 'package:flutter/material.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - 240;
    return SizedBox(
      height: screenHeight,
      child: const TabBarView(
        children: [
          AroodiViewBodyDetails(),
          AroodiViewBodyDetails(),
          AroodiViewBodyDetails(),
          AroodiViewBodyDetails(),
        ],
      ),
    );
  }
}
