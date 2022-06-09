import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:true_vocation_mobile/domain/model/answers_user.dart';
import 'package:true_vocation_mobile/domain/model/questions.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/domain/model/test_result.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class TestRepository {
  Future<List<Questions>> getAllQuestions(id) async {
    final response = await AppConstants.dio.get(
      '/api/test-questions-list/$id',
      options: Options(
        headers: {"Authorization": AppConstants.userToken},
      ),
    );

    return (response.data as List).map((e) => Questions.fromJson(e)).toList();
  }

  Future<CustomResponse> saveUserAnswers(List<AnswersUser> answersUser) async {
    String date = jsonEncode(answersUser);
    final response = await AppConstants.dio.post(
      '/api/answer-users-list',
      data: jsonEncode(answersUser),
      options: Options(
        headers: {"Authorization": AppConstants.userToken},
      ),
    );

    if (response.statusCode! != 200) {
      return CustomResponse(
          code: response.statusCode!, title: response.statusMessage!);
    } else {
      return CustomResponse(code: 200, title: response.statusMessage!);
    }
  }

  Future<TestResult> getTestResult(id) async {
    final response = await AppConstants.dio.get(
      '/api/user-test-result/$id',
      options: Options(
        headers: {"Authorization": AppConstants.userToken},
      ),
    );

    return TestResult.fromJson(response.data);
  }

  Future<bool> checkTestResult(userId) async {
    final response = await AppConstants.dio.post(
      '/api/answer-users-check/$userId',
      options: Options(
        headers: {"Authorization": AppConstants.userToken},
      ),
    );

    return response.data;
  }
}
