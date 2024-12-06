import '../../../../../core/networking/api_result.dart';
import '../../../../core/models/store.dart';

abstract class StoresRepo {
  Future<ApiResult<List<Store>>> getStores({
    required int governorateId,
  });
}
