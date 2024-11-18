import 'package:awfaroffers/features/governorates/data/models/governorates_res_model.dart';
import '../../../../core/networking/api_result.dart';
import '../repo/governorates_repo.dart';

class GetGovernoratesUseCase {
  final GovernoratesRepo governoratesRepo;
  GetGovernoratesUseCase({
    required this.governoratesRepo,
  });
  Future<ApiResult<List<Governorate>>> getGovernorates() async {
    return await governoratesRepo.getGovernorates();
  }
}
