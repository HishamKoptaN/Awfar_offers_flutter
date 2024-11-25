import 'package:awfar_offer_app/features/offers/data/models/offers_response_model.dart';

class StoresSingleton {
  List<StoreElement> _stores = [];
  static final StoresSingleton _instance = StoresSingleton._internal();

  StoresSingleton._internal();

  static StoresSingleton get instance => _instance;

  List<StoreElement> get stores => _stores;

  set stores(List<StoreElement> storesList) {
    _stores = storesList;
  }

  void clear() {
    _stores = [];
  }
}
