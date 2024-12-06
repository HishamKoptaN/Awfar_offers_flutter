import '../models/offer.dart';

class OffersSingleton {
  static final OffersSingleton _instance = OffersSingleton._internal();
  OffersSingleton._internal();
  static OffersSingleton get instance => _instance;
  List<Offer> _offers = [];
  List<Offer> get offers => _offers;
  set offers(List<Offer> offersList) {
    _offers = offersList;
  }

  void clear() {
    _offers = [];
  }
}
