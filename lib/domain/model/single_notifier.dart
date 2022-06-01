import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';

class SingleNotifier extends ChangeNotifier {
  SingleNotifier();

  Region _currentRegion = Region('1', 'Алматы');
  Region get currentRegion => _currentRegion;
  updateRegion(Region value) {
    if (value != _currentRegion) {
      _currentRegion = value;
      notifyListeners();
    }
  }

  User _currentUser = User(null, null, null, null, null, null, null, null, null, null);
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
