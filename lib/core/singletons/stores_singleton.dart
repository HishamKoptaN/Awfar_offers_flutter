import '../models/store.dart';

class StoresSingleton {
  List<Store> _stores = [];
  static final StoresSingleton _instance = StoresSingleton._internal();

  StoresSingleton._internal();

  static StoresSingleton get instance => _instance;

  List<Store> get stores => _stores;

  set stores(List<Store> storesList) {
    _stores = storesList;
  }

  void clear() {
    _stores = [];
  }
}
