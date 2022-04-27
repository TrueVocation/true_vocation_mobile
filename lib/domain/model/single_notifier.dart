import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';

class SingleNotifier extends ChangeNotifier {
  Region _currentRegion = Region('1', 'Алматы');
  SingleNotifier();
  Region get currentRegion => _currentRegion;
  updateRegion(Region value) {
    if (value != _currentRegion) {
      _currentRegion = value;
      notifyListeners();
    }
  }
}
