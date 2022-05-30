import 'package:true_vocation_mobile/data/api/repository/speciality_repository.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';

class SpecialityService {
  Future<Speciality> getSpeciality(var id) async {
    return SpecialityRepository().getSpeciality(id);
  }

  Future<List<Speciality>> getSpecialities(int page, size) async {
    return SpecialityRepository().getSpecialities(page, size);
  }

  Future<List<Speciality>> getSpecialitiesByUniversity(
      int page, size, id) async {
    return SpecialityRepository().getSpecialitiesByUniversity(page, size, id);
  }

  Future<List<Speciality>> getSpecialitiesByProfession(
      int page, size, id) async {
    return SpecialityRepository().getSpecialitiesByProfession(page, size, id);
  }
}
