import 'package:aroodi_app/features/get_countries_and_cities/data/repos/get_city_repo.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_city_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetCityCubit extends Cubit<GetCityState> {
  GetCityCubit(this.getCityRepo) : super(GetCityInitial());

  final GetCityRepo getCityRepo;

  Future<void> getCity() async {
    try {
      emit(GetCityLoading());
      final result = await getCityRepo.getCity();
      result.when(
        failure: (error) {
          emit(GetCityFailure(message: error.error!.toString()));
        },
        success: (countriesModel) {
          emit(GetCitySuccess(getCityModel: countriesModel));
        },
      );
    } catch (e) {
      emit(GetCityFailure(
          message: 'An unexpected error occurred: ${e.toString()}'));
    }
  }
}
