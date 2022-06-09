import 'package:true_vocation_mobile/data/api/repository/user_repository.dart';
import 'package:true_vocation_mobile/domain/model/login.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/utils/functions.dart';

class UserService {
  Future<bool> checkUserExistence(String phoneNumber) async {
    return UserRepository()
        .checkUserExistence(ApiFunctions.phoneFormatter(phoneNumber));
  }

  Future<bool> checkEmail(String email) async {
    return UserRepository().checkEmail(email);
  }

  Future<bool> checkLogin(String login) async {
    return UserRepository().checkLogin(login);
  }

  Future<CustomResponse> registrationUser(AppUser user) async {
    return UserRepository().registrationUser(user);
  }

  Future<CustomResponse> authenticateUser(Login login) async {
    return UserRepository().authenticateUser(login);
  }

  Future<CustomResponse> getUser(String token) async {
    return UserRepository().getUser(token);
  }

  Future<CustomResponse> getUserInfo(int id) async {
    return UserRepository().getUserInfo(id);
  }
}
