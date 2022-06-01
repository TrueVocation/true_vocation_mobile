import 'package:true_vocation_mobile/data/api/repository/user_repository.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';
import 'package:true_vocation_mobile/utils/functions.dart';

class UserService {
  Future<bool> checkUserExistence(String phoneNumber) async {
    return UserRepository()
        .checkUserExistence(ApiFunctions.phoneFormatter(phoneNumber));
  }

  Future<bool> checkEmail(String email) async {
    return UserRepository()
        .checkEmail(email);
  }

  Future<bool> checkLogin(String login) async {
    return UserRepository()
        .checkLogin(login);
  }

  Future<Response> registrationUser(User user) async {
    return UserRepository().registrationUser(user);
  }
}
