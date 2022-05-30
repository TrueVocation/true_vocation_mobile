import 'package:true_vocation_mobile/utils/constants.dart';

class UserRepository {
  Future<bool> checkUserExistence(var phoneNumber) async {
    final response = await ApiConstants.dio.post(
      '/api/check-user-existence?phoneNumber=$phoneNumber',
    );

    return response.data;
  }
}