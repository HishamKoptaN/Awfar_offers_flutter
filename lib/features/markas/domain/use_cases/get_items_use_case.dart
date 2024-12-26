import '../../../../core/models/marka.dart';
import '../../../../core/networking/api_result.dart';
import '../repo/markas_repo.dart';

class GetMarkasUseCase {
  final MarkasRepo markasRepo;
  GetMarkasUseCase({
    required this.markasRepo,
  });
  Future<ApiResult<List<Marka>>> getMarkas({
    required int subCategoryId,
  }) async {
    return await markasRepo.getMarkas(
      subCategoryId: subCategoryId,
    );
  }
}
