import 'package:aroodi_app/core/widgets/custom_divider_widget.dart';
import 'package:aroodi_app/features/offers/presentation/bloc/offers_event.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/core/utils/app_text_styles.dart';
import 'package:aroodi_app/features/offers/presentation/bloc/offers_bloc.dart';
import 'package:aroodi_app/features/offers/presentation/bloc/offers_state.dart';
import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_city_model.dart';
import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_countries_model.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_cit_cubit.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_city_state.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_countries_cubit.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_countries_state.dart';
import '../../../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../../../core/global.dart';

class BuildAppBarWidget extends StatefulWidget {
  const BuildAppBarWidget({
    super.key,
  });

  @override
  State<BuildAppBarWidget> createState() => _BuildAppBarWidgetState();
}

class _BuildAppBarWidgetState extends State<BuildAppBarWidget> {
  int? selectedCountryId;
  int? selectedGovernorateId;

  @override
  void initState() {
    super.initState();
    getGovernorate().then(
      (dovernorateId) {
        selectedGovernorateId = dovernorateId;
      },
    );
    getCountry().then(
      (dovernorateId) {
        selectedGovernorateId = dovernorateId;
      },
    );
  }

  @override
  Widget build(
    context,
  ) {
    return BlocListener<OffersBloc, OffersState>(
      listener: (context, state) {},
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          top: 8,
        ),
        child: Row(
          children: [
            Text(
              "Awfar Offer",
              style: TextStyles.bold13.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    buildCountrySelector(),
                    const SizedBox(width: 8),
                    _buildGovernorateSelector(),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: AppColors.lightPrimaryColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCountrySelector() {
    return BlocConsumer<GetCountriesCubit, GetCountriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetCountriesLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetCountriesSuccess) {
          return GestureDetector(
            onTap: () {
              _showCountrySelection(
                state.getCountriesModel,
              );
            },
            child: selectedCountryId != null
                ? CountryFlag.fromCountryCode(
                    state.getCountriesModel
                        .where(
                          (country) => country.id == selectedCountryId,
                        )
                        .first
                        .code,
                    width: 30,
                    height: 20,
                    shape: const RoundedRectangle(6),
                  )
                : const Text(
                    "select Country",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          );
        } else {
          return const Text(
            "unknown",
            style: TextStyle(color: Colors.white),
          );
        }
      },
    );
  }

  Widget _buildGovernorateSelector() {
    return BlocConsumer<GetCityCubit, GetCityState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetCityLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetCitySuccess) {
          return GestureDetector(
            onTap: () {
              _showCitySelection(
                state.getGovernorateModel,
              );
            },
            child: Text(
              state.getGovernorateModel
                  .where(
                    (governorate) => governorate.id == selectedGovernorateId,
                  )
                  .first
                  .name,
              style: const TextStyle(color: Colors.white),
            ),
          );
        } else {
          return const Text(
            "unknown",
            style: TextStyle(color: Colors.white),
          );
        }
      },
    );
  }

  void _showCountrySelection(
    List<GetCountriesModel> countries,
  ) {
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
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              const Text('إختر البلد', style: TextStyles.bold18),
              const CustomDividerWidget(),
              Expanded(
                child: ListView.builder(
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
                        setState(
                          () {},
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          countries[index].code,
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

  void _showCitySelection(List<GetCityModel> cities) {
    List<GetCityModel> filteredGovernorates = cities
        .where(
          (city) => city.countryId == selectedCountryId,
        )
        .toList();
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
                'إختر المحافظة',
                style: TextStyles.bold18,
              ),
              const CustomDividerWidget(),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredGovernorates.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        await SharedPrefHelper.setData(
                          key: SharedPrefKeys.governorateId,
                          value: filteredGovernorates[index].id,
                        );
                        setState(() {});
                        Navigator.pop(context);
                        getGovernorate().then(
                          (governorateId) {
                            context.read<OffersBloc>().add(
                                  OffersEvent.getOffers(
                                    governorateId: governorateId,
                                  ),
                                );
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          filteredGovernorates[index].name,
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
}
