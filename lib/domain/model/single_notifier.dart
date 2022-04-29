import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';

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

  String _login = '';
  String get login => _login;
  updateLoginValue(String value) {
    _login = value;
    notifyListeners();
  }

  String _email = '';
  String get email => _email;
  updateEmailValue(String value) {
    _email = value;
    notifyListeners();
  }

  String _password = '';
  String get password => _password;
  updatePasswordValue(String value) {
    _password = value;
    notifyListeners();
  }

  String _search = '';
  String get search => _search;
  updateSearchValue(String value) {
    _search = value;
    notifyListeners();
  }
}
