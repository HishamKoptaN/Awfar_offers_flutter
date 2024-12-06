import 'package:flutter/material.dart';
import '../../../../../core/singletons/stores_singleton.dart';
import '../../../../../core/utils/app_colors.dart';

class StoreAvatarSection extends StatelessWidget {
  const StoreAvatarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: StoresSingleton.instance.stores.length,
        itemBuilder: (context, index) {
          final store = StoresSingleton.instance.stores[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                backgroundImage: NetworkImage(
                  store.image!,
                ),
                radius: 22,
              ),
            ),
          );
        },
      ),
    );
  }
}
