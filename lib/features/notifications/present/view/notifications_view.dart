import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../../core/widgets/toast_notifier.dart';
import '../bloc/notifications_bloc.dart';
import '../bloc/notifications_state.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({
    super.key,
  });
  static const String routeName = 'notifications_view';
  @override
  Widget build(
    context,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkPrimaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.darkPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BlocConsumer<NotificationsBloc, NotificationsState>(
            listener: (context, state) {
              state.mapOrNull(
                failure: (
                  apiErrorModel,
                ) {
                  ToastNotifier().showError(
                    context: context,
                    message: apiErrorModel.apiErrorModel.error!,
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (notifications) {
                  return ListView.separated(
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      var notification = notifications[index];
                      return Container(
                        height: 150.h,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: notification.image != null
                                  ? Image.network(
                                      notification.image!,
                                      fit: BoxFit.fill,
                                      height: double.infinity,
                                      width: double.infinity,
                                    )
                                  : const Icon(Icons.image),
                            ),
                            Gap(
                              10.w,
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    notification.message!,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Arial",
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  Gap(
                                    5.h,
                                  ),
                                  Text(
                                    notification.store!.name!,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Arial",
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  Gap(
                                    5.h,
                                  ),
                                  Text(
                                    "notification.creatAt!",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Arial",
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Gap(15);
                    },
                  );
                },
                loading: () {
                  return const CustomCircularProgress();
                },
                orElse: () {
                  return const CustomCircularProgress();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
