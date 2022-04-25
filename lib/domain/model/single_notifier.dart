import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';

class SingleNotifier extends ChangeNotifier {
  late Region _currentRegion;
  SingleNotifier();
  Region get currentCountry => _currentRegion;
  updateCountry(Region value) {
    if (value != _currentRegion) {
      _currentRegion = value;
      notifyListeners();
    }
  }
}
