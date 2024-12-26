import 'package:awfar_offer_app/features/external_notifications/present/bloc/external_notifications_bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../features/countries/present/bloc/countries_bloc.dart';
import '../features/countries/present/bloc/countries_event.dart';
import '../features/countries/present/bloc/countries_state.dart';
import '../features/external_notifications/present/bloc/external_notifications_event.dart';
import '../features/cities/present/bloc/cities_bloc.dart';
import '../features/cities/present/bloc/cities_event.dart';
import '../features/stores/present/bloc/stores_bloc.dart';
import 'database/cache/shared_pref_helper.dart';
import 'database/cache/shared_pref_keys.dart';
import 'singletons/countries_singleton.dart';
import 'singletons/governorates_singleron.dart';
import 'utils/app_colors.dart';
import 'utils/app_text_styles.dart';
import 'widgets/custom_circular_progress.dart';
import 'widgets/custom_divider_widget.dart';
import '../features/categories/present/bloc/categories_bloc.dart';
import '../features/categories/present/bloc/categories_event.dart';
import '../features/coupons/present/bloc/coupons_bloc.dart';
import '../features/coupons/present/bloc/coupons_event.dart';
import '../features/notifications/present/bloc/notifications_bloc.dart';
import '../features/notifications/present/bloc/notifications_event.dart';
import '../features/stores/present/bloc/stores_event.dart';
import '../features/sub_categories/presentation/bloc/sub_categories_bloc.dart';
import '../features/sub_categories/presentation/bloc/sub_categories_event.dart';

Future<void> loadAppData(
  BuildContext context,
) async {
  return await getCity().then(
    (governorateId) {
      context.read<ExternalNotificationsBloc>().add(
            ExternalNotificationsEvent.saveTopic(
              governorateId: governorateId!,
            ),
          );
      context.read<CountriesBloc>().add(
            const CountriesEvent.getCountries(),
          );
      context.read<CitiesBloc>().add(
            const CitiesEvent.getCities(),
          );

      context.read<StoresBloc>().add(
            StoresEvent.getStores(
              governorateId: governorateId,
            ),
          );
      context.read<CategoriesBloc>().add(
            CategoriesEvent.getCategories(
              governorateId: governorateId,
            ),
          );
      context.read<CouponsBloc>().add(
            CouponsEvent.getCoupons(
              governorateId: governorateId,
            ),
          );
      context.read<SubCategoriesBloc>().add(
            const SubCategoriesEvent.getSubCategoriesEvent(),
          );
      context.read<NotificationsBloc>().add(
            const NotificationsEvent.getNotifications(),
          );
    },
  );
}

Future<bool?> checkFirstTime() async {
  bool? isFirst = await SharedPrefHelper.getBool(
    key: SharedPrefKeys.countryId,
  );
  return isFirst;
}

Future<int?> getCity() async {
  int? cityId = await SharedPrefHelper.getInt(
    key: SharedPrefKeys.cityId,
  );
  return cityId;
}

Future<int?> getCountry() async {
  int? countryId = await SharedPrefHelper.getInt(
    key: SharedPrefKeys.countryId,
  );
  return countryId;
}

void showCountrySelection({
  required BuildContext context,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: AppColors.primaryColor,
        ),
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(
              8.h,
            ),
            const Text(
              'إختر البلد',
              style: TextStyles.bold18,
            ),
            const CustomDividerWidget(),
            Expanded(
              child: BlocBuilder<CountriesBloc, CountriesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const CustomCircularProgress();
                    },
                    loaded: (selectedCountryId) {
                      final countries = CountriesSingleton.instance.countries;
                      return ListView.builder(
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          final country = countries[index];
                          return GestureDetector(
                            onTap: () async {
                              await SharedPrefHelper.setData(
                                key: SharedPrefKeys.countryId,
                                value: country.id,
                              );
                              Navigator.pop(context);
                              showCitiesSelection(
                                selectedCountryId: country.id!,
                                context: context,
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: SizedBox(
                                width: 50.w,
                                height: 75.h,
                                child: CountryCodePicker(
                                  initialSelection: country.code,
                                  showCountryOnly: true,
                                  showOnlyCountryWhenClosed: true,
                                  enabled: false,
                                  flagDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}

void showCitiesSelection({
  required int selectedCountryId,
  required BuildContext context,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: AppColors.primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'إختر المدينة',
              style: TextStyles.bold18,
            ),
            const CustomDividerWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: CitiesSingleton.instance.cities
                    .where(
                      (city) => city.countryId == selectedCountryId,
                    )
                    .toList()
                    .length,
                itemBuilder: (context, index) {
                  final governorate = CitiesSingleton.instance.cities
                      .where(
                        (city) => city.countryId == selectedCountryId,
                      )
                      .toList()[index];
                  return GestureDetector(
                    onTap: () async {
                      await SharedPrefHelper.setData(
                        key: SharedPrefKeys.cityId,
                        value: governorate.id,
                      );
                      Navigator.pop(context);
                      await loadAppData(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      child: Text(
                        governorate.name!,
                        style: TextStyles.bold14,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
