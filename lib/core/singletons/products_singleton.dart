import '../models/product.dart';

class ProductsSingleton {
  List<Product> _prdoucts = [];
  static final ProductsSingleton _instance = ProductsSingleton._internal();

  ProductsSingleton._internal();

  static ProductsSingleton get instance => _instance;

  List<Product> get prdoucts => _prdoucts;

  set prdoucts(
    List<Product> prdouctsList,
  ) {
    _prdoucts = prdouctsList;
  }

  void clear() {
    _prdoucts = [];
  }
}
