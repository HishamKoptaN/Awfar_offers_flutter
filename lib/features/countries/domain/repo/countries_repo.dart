import '../../../../core/networking/api_result.dart';
import '../../data/models/countries_response_model.dart';

abstract class CountriesRepo {
  Future<ApiResult<List<Country>>> getCountries();
}
