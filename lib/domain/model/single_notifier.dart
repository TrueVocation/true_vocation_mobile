import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';

class SingleNotifier extends ChangeNotifier {
  SingleNotifier();

  Regions _currentRegion = const Regions(id: 1, name: '');
  Regions get currentRegion => _currentRegion;
  updateRegion(Regions value) {
    if (value != _currentRegion) {
      _currentRegion = value;
      notifyListeners();
    }
  }

  User _currentUser = const User();
  User get currentUser => _currentUser;
  updateUser(User value) {
    if (value != _currentUser) {
      _currentUser = value;
      notifyListeners();
    }
  }

  String _phone = '';
  String get phone => _phone;
  updatePhoneValue(String value) {
    _phone = value;
    notifyListeners();
  }
}
