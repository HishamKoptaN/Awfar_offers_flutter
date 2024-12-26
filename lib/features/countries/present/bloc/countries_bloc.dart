import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/global_methods.dart';
import '../../../../core/singletons/countries_singleton.dart';
import '../../domain/use_cases/get_countries_use_case.dart';
import 'countries_event.dart';
import 'countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  final GetContriesUseCase getCountriesUseCase;
  CountriesBloc({
    required this.getCountriesUseCase,
  }) : super(
          const CountriesState.loading(),
        ) {
    on<CountriesEvent>(
      (event, emit) async {
        await event.when(
          getCountries: () async {
            final result = await getCountriesUseCase.getCountries();
            await result.when(
              success: (response) async {
                CountriesSingleton.instance.countries = response!;
                await getCountry().then(
                  (countryId) {
                    emit(
                      CountriesState.loaded(
                        selectedcountrId: countryId,
                      ),
                    );
                  },
                );
              },
              failure: (error) async {
                emit(
                  CountriesState.failure(
                    error: error.error!,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
