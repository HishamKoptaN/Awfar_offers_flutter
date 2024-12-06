class FavsCouponsSingleton {
  static final FavsCouponsSingleton _instance =
      FavsCouponsSingleton._internal();
  factory FavsCouponsSingleton() => _instance;
  FavsCouponsSingleton._internal();
  List<int>? _favs = [];
  static FavsCouponsSingleton get instance => _instance;
  List<int>? get favs => _favs;
  set favs(List<int>? favs) {
    _favs = favs;
  }
}
