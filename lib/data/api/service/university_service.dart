import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class UniversityService {
  Future<University> getUniversity(var id) async {
    final response = await ApiConstants.dio.get(
      '/api/university/$id',
    );

    return University.fromApi(response.data);
  }

  Future<List<University>> getUniversities(int page) async {
    final response = await ApiConstants.dio
        .get('/api/universities?page=$page&size=10&sort=id&order=desc');

    return (response.data as List).map((e) => University.fromApi(e)).toList();
  }
}
