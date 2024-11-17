import 'package:aroodi_app/features/coupons/data/logic/coupon_model.dart';

abstract class CouponsState {}

final class CouponsStateInitial extends CouponsState {}

final class CouponsStateLoading extends CouponsState {}

final class CouponsStateSuccess extends CouponsState {
  final List<CouponModel> couponsModel;
  CouponsStateSuccess({
    required this.couponsModel,
  });
}

final class CouponsStateFailure extends CouponsState {
  final String message;

  CouponsStateFailure({required this.message});
}
