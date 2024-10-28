import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/main_production_repo.dart';
import '../datasources/main_production_api.dart';
import '../models/check_response_model.dart';

class MainRepoImpl implements MainProductionRepo {
  final MainProductionApi mainApi;
  MainRepoImpl(
    this.mainApi,
  );

  @override
  Future<ApiResult<SettingsResponseModel>> getSettings() async {
    try {
      final response = await mainApi.getSettings();
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
