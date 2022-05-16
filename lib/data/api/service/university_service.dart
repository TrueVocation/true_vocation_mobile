import 'package:dio/dio.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class UniversityService {
  final Dio _dio = Dio();

  Future<University> getUniversity(var id) async {
    final response = await _dio.get(
      '/university/$id',
    );

    return University.fromApi(response.data);
  }

  Future<List<University>> getUniversities(int page) async {
    final response =
        await _dio.get(ApiConstants.baseUrl+'/api/universities?page=0&size=10&sort=id&order=desc');

    return (response.data as List).map((e) => University.fromApi(e)).toList();
  }
}
