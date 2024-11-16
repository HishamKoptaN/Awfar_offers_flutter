import '../../features/categories/data/models/categories_response_model.dart';

class GovernoratesSingleton {
  List<Offer> _offers = [];
  static final GovernoratesSingleton _instance =
      GovernoratesSingleton._internal();

  GovernoratesSingleton._internal();

  static GovernoratesSingleton get instance => _instance;

  // List<Governorate> get offers => _offers;

  set offers(List<Offer> offersList) {
    _offers = offersList;
  }

  void clear() {
    _offers = [];
  }
}
