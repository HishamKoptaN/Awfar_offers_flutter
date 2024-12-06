import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/coupon.dart';
import '../../bloc/coupons_bloc.dart';
import '../../bloc/coupons_event.dart';

class BottomSheetContent extends StatefulWidget {
  BottomSheetContent({
    super.key,
    required this.coupon,
    required this.isFav,
  });
  final Coupon coupon;
  bool isFav;
  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  bool isCopy = false;
  @override
  Widget build(context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primaryColor, // لون الخلفية
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context); // إغلاق الـ BottomSheet
                  },
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Image(
                image: NetworkImage(
                  widget.coupon.store!.image!,
                ),
                width: 70,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.coupon.code!,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.coupon.description!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 48,
                ),
                child: GestureDetector(
                  onTap: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: widget.coupon.code!,
                      ),
                    ); // نسخ الكود
                    setState(() {
                      isCopy = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color.fromARGB(255, 29, 224, 36),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              widget.coupon.code!,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 29, 224, 36),
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            isCopy ? "تم النسخ" : "نسخ",
                            style: TextStyle(
                              color: isCopy
                                  ? Colors.grey
                                  : const Color.fromARGB(255, 29, 224, 36),
                              fontSize: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "هل يعمل هذا الكوبون",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.thumb_up_outlined,
                    color: AppColors.yellowColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.thumb_down_outlined,
                    color: AppColors.yellowColor,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        widget.isFav = !widget.isFav;
                        setState(
                          () {},
                        );
                        context.read<CouponsBloc>().add(
                              CouponsEvent.updateFavs(
                                id: widget.coupon.id!,
                                add: !widget.isFav,
                              ),
                            );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.darkPrimaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            widget.isFav
                                ? Icons.favorite_outlined
                                : Icons.favorite_border_outlined,
                            color: AppColors.lightPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(
                            text: widget.coupon.code!,
                          ),
                        );
                        //! نسخ الكود
                        setState(() {
                          isCopy = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightPrimaryColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: AppColors.lightPrimaryColor,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 8,
                          ),
                          child: Text(
                            "Visit Foot Locker",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.darkPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.share_outlined,
                          color: AppColors.lightPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 165,
          right: -16,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.black,
          ),
        ),
        const Positioned(
          top: 165,
          left: -16,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
