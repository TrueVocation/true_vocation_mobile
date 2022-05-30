import 'package:true_vocation_mobile/data/api/repository/user_repository.dart';
import 'package:true_vocation_mobile/utils/functions.dart';

class UserService {
  Future<bool> checkUserExistence(String phoneNumber) async {
    return UserRepository()
        .checkUserExistence(ApiFunctions.phoneFormatter(phoneNumber));
  }
}
