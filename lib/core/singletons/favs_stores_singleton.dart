class FavsStoresSingleton {
  static final FavsStoresSingleton _instance = FavsStoresSingleton._internal();
  factory FavsStoresSingleton() => _instance;
  FavsStoresSingleton._internal();
  List<int>? _favs = [];
  static FavsStoresSingleton get instance => _instance;
  List<int>? get favs => _favs;
  set favs(List<int>? favs) {
    _favs = favs;
  }
}
