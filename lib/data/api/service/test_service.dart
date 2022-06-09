import 'package:true_vocation_mobile/data/api/repository/test_repository.dart';
import 'package:true_vocation_mobile/domain/model/questions.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/domain/model/test_result.dart';

class TestService {
  Future<List<Questions>> getAllQuestions(id) async {
    return TestRepository().getAllQuestions(id);
  }

  Future<CustomResponse> saveUserAnswers(data) async {
    return TestRepository().saveUserAnswers(data);
  }

  Future<TestResult> getTestResult(id) async {
    return TestRepository().getTestResult(id);
  }

  Future<bool> checkTestResult(userId) async {
    return TestRepository().checkTestResult(userId);
  }
}
