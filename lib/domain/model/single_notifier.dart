import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';

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

  UserInfo _currentUser = const UserInfo();
  UserInfo get currentUser => _currentUser;
  updateUser(UserInfo value) {
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

  String _token = '';
  String get token => _token;
  updateTokenValue(String value) {
    _token = value;
    notifyListeners();
  }
}
