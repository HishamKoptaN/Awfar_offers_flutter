import 'package:aroodi_app/features/get_countries_and_cities/data/repos/get_countries_repo.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_countries_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetCountriesCubit extends Cubit<GetCountriesState> {
  GetCountriesCubit(this.getCountriesRepo) : super(GetCountriesInitial());

  final GetCountriesRepo getCountriesRepo;

  Future<void> getCountries() async {
    try {
      emit(GetCountriesLoading());
      final result = await getCountriesRepo.getCountries();
      result.when(
        failure: (error) {
          emit(GetCountriesFailure(message: error.error!.toString()));
        },
        success: (countriesModel) {
          emit(GetCountriesSuccess(getCountriesModel: countriesModel));
        },
      );
    } catch (e) {
      emit(GetCountriesFailure(
          message: 'An unexpected error occurred: ${e.toString()}'));
    }
  }
}
