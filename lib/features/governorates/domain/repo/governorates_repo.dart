import 'package:awfaroffers/features/governorates/data/models/governorates_res_model.dart';
import '../../../../../core/networking/api_result.dart';

abstract class GovernoratesRepo {
  Future<ApiResult<List<Governorate>>> getGovernorates();
}
