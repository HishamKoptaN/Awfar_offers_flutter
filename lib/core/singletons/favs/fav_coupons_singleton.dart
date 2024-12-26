class FavCouponsSingleton {
  static final FavCouponsSingleton _instance = FavCouponsSingleton._internal();
  factory FavCouponsSingleton() => _instance;
  FavCouponsSingleton._internal();
  List<int>? _favs = [];
  static FavCouponsSingleton get instance => _instance;
  List<int>? get favs => _favs;
  set favs(List<int>? favs) {
    _favs = favs;
  }
}
