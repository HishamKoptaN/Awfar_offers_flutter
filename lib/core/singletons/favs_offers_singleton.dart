class FavsOffersSingleton {
  static final FavsOffersSingleton _instance = FavsOffersSingleton._internal();
  factory FavsOffersSingleton() => _instance;
  FavsOffersSingleton._internal();
  List<int>? _favs = [];
  static FavsOffersSingleton get instance => _instance;
  List<int>? get favs => _favs;
  set favs(List<int>? favs) {
    _favs = favs;
  }
}
