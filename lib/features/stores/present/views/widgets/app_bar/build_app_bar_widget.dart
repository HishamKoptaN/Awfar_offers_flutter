import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/global_methods.dart';
import '../../../../../../core/singletons/countries_singleton.dart';
import '../../../../../../core/singletons/governorates_singleron.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../countries/presentation/bloc/countries_bloc.dart';
import '../../../../../countries/presentation/bloc/countries_state.dart';
import '../../../../../governorates/present/bloc/governorates_bloc.dart';
import '../../../../../governorates/present/bloc/governorates_state.dart';
import '../../../../../offers/presentation/bloc/offers_bloc.dart';
import '../../../../../offers/presentation/bloc/offers_state.dart';

class BuildAppBarWidget extends StatefulWidget {
  const BuildAppBarWidget({
    super.key,
  });

  @override
  State<BuildAppBarWidget> createState() => _BuildAppBarWidgetState();
}

class _BuildAppBarWidgetState extends State<BuildAppBarWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(
    context,
  ) {
    return BlocBuilder<OffersBloc, OffersState>(
      builder: (context, state) {
        return Padding(
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
                      buildCountrySelectorWidget(),
                      const SizedBox(width: 8),
                      _buildGovernorateSelectorWidget(),
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
        );
      },
    );
  }

  Widget buildCountrySelectorWidget() {
    return BlocBuilder<CountriesBloc, CountriesState>(
      builder: (context, state) {
        return state.maybeWhen(
          countriesloaded: (
            selectedCountryId,
          ) {
            return GestureDetector(
              onTap: () {
                showCountrySelection(
                  context: context,
                );
              },
              child: selectedCountryId != null
                  ? CountryFlag.fromCountryCode(
                      CountriesSingleton.instance.countries
                          .firstWhere(
                            (country) => country.id == selectedCountryId,
                          )
                          .code!,
                      width: 40.w,
                      height: 25.h,
                      shape: const RoundedRectangle(6),
                    )
                  : const Text(
                      "أختر دولة",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
            );
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          orElse: () {
            return const CircularProgressIndicator();
          },
        );
      },
    );
  }

  Widget _buildGovernorateSelectorWidget() {
    return BlocBuilder<GovernoratesBloc, GovernoratesState>(
      builder: (context, state) {
        return state.maybeWhen(
          governoratesloaded: (
            selectedGovernorateId,
          ) {
            return GestureDetector(
              onTap: () async {
                await getCountry().then(
                  (id) {
                    showGovernorateSelection(
                      selectedCountryId: id,
                      context: context,
                    );
                  },
                );
              },
              child: Text(
                selectedGovernorateId != null
                    ? GovernoratesSingleton.instance.governorates
                        .where(
                          (governorate) =>
                              governorate.id == selectedGovernorateId,
                        )
                        .first
                        .name!
                    : "اختر محافظة",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          orElse: () {
            return const CircularProgressIndicator();
          },
        );
      },
    );
  }
}
