import 'package:awfar_offer_app/core/widgets/custom_back_button.dart';
import 'package:awfar_offer_app/features/notifications/present/view/notifications_settings_view.dart';
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomBackButton(),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "إشعار",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        NotificationsSettingsView.routeName,
                      );
                    },
                    icon: const Icon(
                      Icons.settings,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                            return Stack(
                              children: [
                                Container(
                                  height: 100.h,
                                  width: double.infinity,
                                  // padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      notification.image != null
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                                child: Image.network(
                                                  notification.image!,
                                                  height: double.infinity,
                                                  width: 65,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            )
                                          : const Icon(
                                              Icons.image,
                                              size: 65,
                                              color: Colors.white,
                                            ),
                                      Gap(
                                        10.w,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ListTile(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 16),
                                              title: Text(
                                                notification.message!,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Arial",
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              subtitle: Text(
                                                notification.store!.name!,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Arial",
                                                  fontSize: 15.sp,
                                                ),
                                              ),
                                              trailing: const Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.access_time,
                                                  color: Colors.white,
                                                  size: 18,
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  "الخميس, 28 نوفمبر 24",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Arial",
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                                const Spacer(),
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                  ),
                                                  child: Icon(
                                                    Icons.done_all_outlined,
                                                    color: AppColors
                                                        .lightPrimaryColor,
                                                    size: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Positioned(
                                  right: 1,
                                  top: 1,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 5,
                                  ),
                                ),
                              ],
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
          ],
        ),
      ),
    );
  }
}
