import '../../features/governorates/data/models/governorates_res_model.dart';

class GovernoratesSingleton {
  List<Governorate> _governorates = [];
  static final GovernoratesSingleton _instance =
      GovernoratesSingleton._internal();

  GovernoratesSingleton._internal();

  static GovernoratesSingleton get instance => _instance;

  List<Governorate> get governorates => _governorates;

  set governorates(List<Governorate> governoratesList) {
    _governorates = governoratesList;
  }

  void clear() {
    _governorates = [];
  }
}
