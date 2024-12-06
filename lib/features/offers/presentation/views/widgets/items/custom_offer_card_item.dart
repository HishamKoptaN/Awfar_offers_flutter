import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/models/store.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../stores/presentation/bloc/stores_bloc.dart';
import '../../../../../stores/presentation/bloc/stores_event.dart';
import '../store/custom_marka_item.dart';

class CustomCardItem extends StatefulWidget {
  CustomCardItem({
    super.key,
    required this.store,
    required this.isFav,
  });

  final Store store;
  bool isFav;
  @override
  State<CustomCardItem> createState() => _CustomCardItemState();
}

class _CustomCardItemState extends State<CustomCardItem> {
  @override
  Widget build(context) {
    double width = MediaQuery.of(context).size.width;
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
                  widget.store.image!,
                  height: (((width - 6) / 2) / 0.58) / 1.38,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Text(
                  "+${widget.store.offerGroups!.length}",
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
                  imageUrl: widget.store.offerGroups!.first.image!,
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
                      widget.store.offerGroups!.first.endAt == 0
                          ? "ينتهي اليوم"
                          : "${widget.store.offerGroups!.first.daysRemaining} أيام متبقية",
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
                    widget.store.offerGroups!.first.name!,
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
                    widget.store.name!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () async {
                      widget.isFav = !widget.isFav;
                      setState(
                        () {},
                      );
                      context.read<StoresBloc>().add(
                            StoresEvent.updateFavs(
                              id: widget.store.id!,
                              add: !widget.isFav,
                            ),
                          );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
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
