import 'package:dio/dio.dart';
import 'package:true_vocation_mobile/domain/model/login.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class UserRepository {
  Future<bool> checkUserExistence(var phoneNumber) async {
    final response = await AppConstants.dio.post(
      '/api/check-user-existence?phoneNumber=$phoneNumber',
    );
    return response.data;
  }

  Future<bool> checkEmail(var email) async {
    final response = await AppConstants.dio.post(
      '/api/account/check-email?email=$email',
    );
    return response.data;
  }

  Future<bool> checkLogin(var login) async {
    final response = await AppConstants.dio.post(
      '/api/account/check-login?login=$login',
    );
    return response.data;
  }

  Future<CustomResponse> registrationUser(AppUser user) async {
    final response = await AppConstants.dio.post(
        '/api/account/registration', data: user.toJson());

    if (response.statusCode! >= 400) {
      return CustomResponse.fromJson(response.data);
    } else {
      return const CustomResponse(title: '', code: 200);
    }
  }

  Future<CustomResponse> authenticateUser(Login login) async {
    final response = await AppConstants.dio.post(
        '/api/authenticate', data: login.toJson());

    if (response.statusCode! >= 400) {
      return CustomResponse.fromJson(response.data);
    } else {
      return CustomResponse(code: 200, title: response.headers.value('Authorization')!);
    }
  }

  Future<CustomResponse> getUser(String token) async {
    final response = await AppConstants.dio.get(
        '/api/account/user', options: Options(
      headers: {"Authorization": token},
    ));

    if (response.statusCode! >= 400) {
      return CustomResponse.fromJson(response.data);
    } else {
      return CustomResponse(code: 200, title: response.statusMessage!, body: response.data);
    }
  }

  Future<CustomResponse> getUserInfo(int id) async {
    final response = await AppConstants.dio.get(
        '/api/app-users-by-user/$id');

    if (response.statusCode! >= 400) {
      return CustomResponse.fromJson(response.data);
    } else {
      return CustomResponse(code: 200, title: response.statusMessage!, body: response.data);
    }
  }
}