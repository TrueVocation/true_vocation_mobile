import 'package:dio/dio.dart';
import 'package:true_vocation_mobile/data/api/model/api_university.dart';
import 'package:true_vocation_mobile/data/api/request/get_university_body.dart';

class UniversityService {
  static const _BASE_URL = "https";

  final Dio _dio = Dio(BaseOptions(baseUrl: _BASE_URL));

  Future<ApiUniversity> getUniversity(GetUniversityBody body) async {
    final response = await _dio.get(
        '/json',
        queryParameters: body.toApi()
    );

    return ApiUniversity.fromApi(response.data);
  }
}
