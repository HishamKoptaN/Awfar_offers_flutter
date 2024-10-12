import 'package:aroodi_app/features/aroodi/presentation/views/widgets/custom_marka_item.dart';
import 'package:flutter/material.dart';

class CustomMarkaItemListView extends StatelessWidget {
  const CustomMarkaItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CustomMarkaItem(
              radius1: 23,
              radius2: 22,
            ),
          );
        },
      ),
    );
  }
}
