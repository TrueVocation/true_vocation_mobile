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

  String _phone = '';
  String get phone => _phone;
  updatePhoneValue(String value) {
    _phone = value;
    notifyListeners();
  }

  DateTime _bDate = DateTime.now();
  DateTime get bDate => _bDate;
  updateBDateValue(DateTime value) {
    _bDate = value;
    notifyListeners();
  }

  String _password = '';
  String get password => _password;
  updatePasswordValue(String value) {
    _password = value;
    notifyListeners();
  }
}
