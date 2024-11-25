import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../data/models/offers_response_model.dart';
import '../store/custom_marka_item.dart';

class CustomCardItem extends StatefulWidget {
  CustomCardItem({
    super.key,
    required this.offersResponseModelOffer,
    required this.isFav,
  });

  final OffersResponseModelOffer offersResponseModelOffer;
  bool isFav;
  @override
  State<CustomCardItem> createState() => _CustomCardItemState();
}

class _CustomCardItemState extends State<CustomCardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.network(
                  widget.offersResponseModelOffer.image!,
                  height: 260.h,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Text(
                  "+${widget.offersResponseModelOffer.store!.offersCount!}",
                  style: const TextStyle(
                    color: AppColors.lightPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                right: 4,
                child: CustomMarkaItem(
                  radius1: 20,
                  radius2: 19,
                  imageUrl: widget.offersResponseModelOffer.store!.name!,
                ),
              ),
              Positioned(
                left: 4,
                bottom: -20,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.yellowColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.offersResponseModelOffer.daysRemaining == 0
                          ? "ينتهي اليوم"
                          : "${widget.offersResponseModelOffer.daysRemaining} أيام متبقية",
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 28,
            left: 8,
            right: 8,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                children: [
                  Text(
                    widget.offersResponseModelOffer.description!,
                    style: const TextStyle(
                      color: AppColors.yellowColor,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.done_all_outlined,
                      color: AppColors.lightPrimaryColor,
                      size: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 4,
            right: 8,
            left: 8,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                children: [
                  Text(
                    widget.offersResponseModelOffer.store!.name!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () async {
                      !widget.isFav
                          ? await SharedPrefHelper.updateList(
                              key: SharedPrefKeys.favoriteOffers,
                              value: widget.offersResponseModelOffer.id!,
                              add: true,
                            )
                          : await SharedPrefHelper.updateList(
                              key: SharedPrefKeys.favoriteOffers,
                              value: widget.offersResponseModelOffer.id!,
                              add: false,
                            );

                      setState(
                        () {
                          widget.isFav = !widget.isFav;
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        widget.isFav
                            ? Icons.favorite_outlined
                            : Icons.favorite_border_outlined,
                        color: AppColors.lightPrimaryColor,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
