import '../../../../../core/networking/api_result.dart';
import '../../data/models/governorates_res_model.dart';

abstract class GovernoratesRepo {
  Future<ApiResult<List<Governorate>>> getGovernorates();
}
