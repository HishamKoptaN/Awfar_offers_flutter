import 'database/cache/shared_pref_helper.dart';
import 'database/cache/shared_pref_keys.dart';

Future<int> getGovernorate() async {
  int? governorateId = await SharedPrefHelper.getInt(
    key: SharedPrefKeys.governorateId,
  );
  return governorateId;
}

Future<int> getCountry() async {
  int? countryId = await SharedPrefHelper.getInt(
    key: SharedPrefKeys.countryId,
  );
  return countryId;
}
