import '../../features/coupons/data/models/coupon.dart';

class CouponsSingleton {
  static final CouponsSingleton _instance = CouponsSingleton._internal();
  CouponsSingleton._internal();
  static CouponsSingleton get instance => _instance;
  List<Coupon> _coupons = [];
  List<Coupon> get coupons => _coupons;
  set coupons(List<Coupon> couponsList) {
    _coupons = couponsList;
  }

  void clear() {
    _coupons = [];
  }
}
