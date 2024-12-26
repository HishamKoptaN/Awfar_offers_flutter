import '../../../../core/models/marka.dart';
import '../../../../core/networking/api_result.dart';

abstract class MarkasRepo {
  Future<ApiResult<List<Marka>>> getMarkas({
    required int subCategoryId,
  });
}
