import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/models/store.dart';
import '../../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../stores/presentation/bloc/stores_bloc.dart';
import '../../../../../stores/presentation/bloc/stores_state.dart';
import 'custom_marka_item.dart';

class CustomMarkaItemListView extends StatelessWidget {
  CustomMarkaItemListView({
    super.key,
    required this.stores,
  });

  List<Store> stores;
  @override
  Widget build(context) {
    return BlocBuilder<StoresBloc, StoresState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: () {
            return SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stores.length,
                itemBuilder: (context, index) {
                  final store = stores[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CustomMarkaItem(
                      radius1: 23,
                      radius2: 22,
                      imageUrl: store.image!,
                    ),
                  );
                },
              ),
            );
          },
          orElse: () {
            return const CustomCircularProgress();
          },
        );
      },
    );
  }
}
