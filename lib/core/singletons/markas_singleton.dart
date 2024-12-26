import '../models/marka.dart';

class MarkasSingleton {
  List<Marka> _markas = [];
  static final MarkasSingleton _instance = MarkasSingleton._internal();

  MarkasSingleton._internal();

  static MarkasSingleton get instance => _instance;

  List<Marka> get markas => _markas;

  set markas(
    List<Marka> markasList,
  ) {
    _markas = markasList;
  }

  void clear() {
    _markas = [];
  }
}
