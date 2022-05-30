import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class ProfessionRepository {
  Future<Professions> getProfession(var id) async {
    final response =
    await ApiConstants.dio.get('/api/professions/$id}');

    return Professions.fromApi(response.data);
  }

  Future<List<Professions>> getProfessions(int page, size) async {
    final response =
    await ApiConstants.dio.get('/api/professions?page=$page&size=$size&sort=id&order=desc');

    return (response.data as List).map((e) => Professions.fromApi(e)).toList();
  }

  Future<List<Professions>> getProfessionsBySpeciality(int page, size, id) async {
    final response =
    await ApiConstants.dio.get('/api/professions-by-speciality/$id?page=$page&size=$size&sort=id&order=desc');

    return (response.data as List).map((e) => Professions.fromApi(e)).toList();
  }
}