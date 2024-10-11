import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchAndRefreshWidget extends StatelessWidget {
  const CustomSearchAndRefreshWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: Row(
        children: [
          Expanded(
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
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(8)),
            child: const Icon(
              Icons.refresh_outlined,
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
