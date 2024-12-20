import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/models/marka.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/markas_repo.dart';
import '../data_sources/markas_api.dart';

class MarkasRepoImpl implements MarkasRepo {
  final MarkasApi markasApi;
  MarkasRepoImpl({
    required this.markasApi,
  });
  @override
  Future<ApiResult<List<Marka>>> getMarkas({
    required int subCategoryId,
  }) async {
    try {
      final response = await markasApi.getMarkas(
        subCategoryId: subCategoryId,
      );
      return ApiResult.success(
        data: response,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }
}
