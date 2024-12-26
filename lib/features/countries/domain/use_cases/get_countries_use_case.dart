import '../../../../core/networking/api_result.dart';
import '../../data/models/countries_res_model.dart';
import '../repo/countries_repo.dart';

class GetContriesUseCase {
  final CountriesRepo categoriesRepo;
  GetContriesUseCase({
    required this.categoriesRepo,
  });
  Future<ApiResult<List<Country>>> getCountries() async {
    return await categoriesRepo.getCountries();
  }
}
