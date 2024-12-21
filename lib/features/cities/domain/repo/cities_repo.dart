import '../../../../../core/networking/api_result.dart';
import '../../data/models/cities_res_model.dart';

abstract class CitiesRepo {
  Future<ApiResult<List<City>>> getCities();
}
