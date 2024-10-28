import '../../../../core/networking/api_result.dart';
import '../../data/models/check_response_model.dart';
import '../repo/main_production_repo.dart';

class GetSettingsUseCase {
  final MainProductionRepo mainRepo;
  GetSettingsUseCase(
    this.mainRepo,
  );
  Future<ApiResult<SettingsResponseModel>> getSettings() async {
    return await mainRepo.getSettings();
  }
}
