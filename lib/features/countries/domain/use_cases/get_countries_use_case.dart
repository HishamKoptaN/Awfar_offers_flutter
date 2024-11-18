import 'package:awfaroffers/features/countries/data/models/countries_response_model.dart';
import '../../../../core/networking/api_result.dart';
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
