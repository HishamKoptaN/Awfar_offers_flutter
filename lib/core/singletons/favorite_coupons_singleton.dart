// import '../database/cache/shared_pref_helper.dart';
// import '../database/cache/shared_pref_keys.dart';

// class FavoriteCouponsManager {
//   // إنشاء Instance ثابتة للفئة (Singleton)
//   static final FavoriteCouponsManager _instance =
//       FavoriteCouponsManager._internal();
//   // قائمة الكوبونات المفضلة
//   final List<int> _favoriteCoupons = [];
//   // مُنشئ خاص
//   FavoriteCouponsManager._internal();
//   // طريقة للوصول إلى الـ Singleton Instance
//   factory FavoriteCouponsManager() {
//     return _instance;
//   }
//   // إضافة كوبون إلى القائمة
//   void addFavorite(int couponId) {
//     if (!_favoriteCoupons.contains(couponId)) {
//       _favoriteCoupons.add(couponId);
//     }
//   }

//   // إزالة كوبون من القائمة
//   void removeFavorite(int couponId) {
//     _favoriteCoupons.remove(couponId);
//   }

//   // التحقق إذا كان الكوبون مفضلًا
//   bool isFavorite(int couponId) {
//     return _favoriteCoupons.contains(couponId);
//   }

//   // الحصول على القائمة الكاملة
//   List<int> get favoriteCoupons => _favoriteCoupons;

//   // ملء الكوبونات من SharedPreferences
//   Future<void> loadFromSharedPreferences() async {
//     List<int> savedCoupons = await SharedPrefHelper.getIntList(
//       key: SharedPrefKeys.favoriteCoupons,
//     );

//     _favoriteCoupons.clear();
//     _favoriteCoupons.addAll(savedCoupons);
//   }

//   // حفظ القائمة إلى SharedPreferences (اختياري)
//   // Future<void> saveToSharedPreferences() async {
//   //   await SharedPrefHelper.updateList(
//   //     key: SharedPrefKeys.favoriteCoupons,
//   //     value: _favoriteCoupons,

//   //   );
//   // }
// }
