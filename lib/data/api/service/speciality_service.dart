import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class SpecialityService {
  Future<Speciality> getSpeciality(var id) async {
    final response =
    await ApiConstants.dio.get('/api/specialties/$id}');

    return Speciality.fromApi(response.data);
  }

  Future<List<Speciality>> getSpecialities(int page) async {
    final response =
    await ApiConstants.dio.get('/api/specialties?page=$page&size=10&sort=id&order=desc');

    return (response.data as List).map((e) => Speciality.fromApi(e)).toList();
  }
}