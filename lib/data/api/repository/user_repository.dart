import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class UserRepository {
  Future<bool> checkUserExistence(var phoneNumber) async {
    final response = await ApiConstants.dio.post(
      '/api/check-user-existence?phoneNumber=$phoneNumber',
    );
    return response.data;
  }

  Future<bool> checkEmail(var email) async {
    final response = await ApiConstants.dio.post(
      '/api/account/check-email?email=$email',
    );
    return response.data;
  }

  Future<bool> checkLogin(var login) async {
    final response = await ApiConstants.dio.post(
      '/api/account/check-login?login=$login',
    );
    return response.data;
  }

  Future<Response> registrationUser(User user) async {
    final response = await ApiConstants.dio.post(
        '/api/account/registration', data: user.toJson());

    if (response.statusCode! >= 400) {
      return Response.fromApi(response.data);
    } else {
      return Response('', 200);
    }
  }
}