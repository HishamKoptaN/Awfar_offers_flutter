import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/global_methods.dart';
import '../../../../core/singletons/governorates_singleron.dart';
import '../../domain/use_cases/get_cities_use_case.dart';
import 'cities_event.dart';
import 'cities_state.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final GetCitiesUseCase getCitiesUseCase;
  CitiesBloc({
    required this.getCitiesUseCase,
  }) : super(
          const CitiesState.initial(),
        ) {
    on<CitiesEvent>(
      (event, emit) async {
        await event.when(
          getCities: () async {
            final result = await getCitiesUseCase.getCities();
            await result.when(
              success: (response) async {
                int? selectedCityId;
                await getCity().then(
                  (cityId) {
                    selectedCityId = cityId;
                  },
                );
                CitiesSingleton.instance.cities = response!;
                emit(
                  CitiesState.loaded(
                    selectedCityId: selectedCityId,
                  ),
                );
              },
              failure: (error) async {
                emit(
                  CitiesState.failure(
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
