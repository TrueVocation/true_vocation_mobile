import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class UniversityRepository {
  Future<University> getUniversity(var id) async {
    final response = await ApiConstants.dio.get(
      '/api/university/$id',
    );

    return University.fromJson(response.data);
  }

  Future<List<University>> getUniversities(int page, size) async {
    final response = await ApiConstants.dio
        .get('/api/universities?page=$page&size=$size&sort=id&order=desc');

    return (response.data as List).map((e) => University.fromJson(e)).toList();
  }

  Future<List<University>> getUniversitiesBySpecialtyId(int page, size, id) async {
    final response = await ApiConstants.dio
        .get('/api/universities-by-speciality/$id?page=$page&size=$size&sort=id&order=desc');

    return (response.data as List).map((e) => University.fromJson(e)).toList();
  }
}