import 'package:awfaroffers/features/countries/presentation/bloc/countries_bloc.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../../../core/global_methods.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_divider_widget.dart';
import '../../../../../countries/data/models/countries_response_model.dart';
import '../../../../../countries/presentation/bloc/countries_state.dart';
import '../../../../../governorates/data/models/governorates_res_model.dart';
import '../../../../../governorates/present/bloc/governorates_bloc.dart';
import '../../../../../governorates/present/bloc/governorates_state.dart';
import '../../../bloc/offers_bloc.dart';
import '../../../bloc/offers_event.dart';
import '../../../bloc/offers_state.dart';

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
                width: 150.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    return BlocConsumer<CountriesBloc, CountriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          countriesloaded: (countries, selectedCountryId) {
            return GestureDetector(
              onTap: () {
                _showCountrySelection(
                  countries,
                );
              },
              child: selectedCountryId != null
                  ? CountryFlag.fromCountryCode(
                      countries
                          .where(
                            (country) => country.id == selectedCountryId,
                          )
                          .first
                          .code!,
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
    return BlocConsumer<GovernoratesBloc, GovernoratesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          governoratesloaded: (governorates, selectedGovernorateId) {
            return GestureDetector(
              onTap: () {
                _showGovernorateSelection(
                  governorates: governorates,
                  selectedCountryId: selectedGovernorateId!,
                );
              },
              child: Text(
                selectedGovernorateId != null
                    ? governorates
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

  void _showCountrySelection(
    List<Country> countries,
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
                          countries[index].code!,
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

  void _showGovernorateSelection({
    required List<Governorate> governorates,
    required int selectedCountryId,
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
                'إختر المحافظة',
                style: TextStyles.bold18,
              ),
              const CustomDividerWidget(),
              Expanded(
                child: ListView.builder(
                  itemCount: governorates
                      .where(
                        (city) => city.countryId == selectedCountryId,
                      )
                      .toList()
                      .length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        await SharedPrefHelper.setData(
                          key: SharedPrefKeys.governorateId,
                          value: governorates
                              .where(
                                (city) => city.countryId == selectedCountryId,
                              )
                              .toList()[index]
                              .id,
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
                          governorates
                              .where(
                                (city) => city.countryId == selectedCountryId,
                              )
                              .toList()[index]
                              .name!,
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
