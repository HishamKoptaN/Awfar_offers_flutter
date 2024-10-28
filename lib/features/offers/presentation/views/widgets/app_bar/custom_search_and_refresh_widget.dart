import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/core/utils/app_text_styles.dart';
import 'package:aroodi_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class CustomSearchAndRefreshWidget extends StatelessWidget {
  const CustomSearchAndRefreshWidget({
    super.key,
  });

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SearchView.routeName);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "بحث..",
                        style: TextStyles.bold14,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.autorenew_outlined,
                color: AppColors.lightPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
