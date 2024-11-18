import 'package:awfaroffers/features/governorates/data/models/governorates_res_model.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/global_methods.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/governorates_repo.dart';
import '../data_sources/governorates_api.dart';

class GovernoratesRepoImpl implements GovernoratesRepo {
  GovernoratesApi governoratesApi;
  GovernoratesRepoImpl({
    required this.governoratesApi,
  });
  @override
  Future<ApiResult<List<Governorate>>> getGovernorates() async {
    try {
      final response = await governoratesApi.getGovernorates();
      int? selectedGovernorateId;
      await getGovernorate().then(
        (dovernorateId) {
          selectedGovernorateId = dovernorateId;
        },
      );
      return ApiResult.success(
        response,
      );
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handle(
          error,
        ),
      );
    }
  }
}
