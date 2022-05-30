import 'package:true_vocation_mobile/data/api/repository/university_repository.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';

class UniversityService {
  Future<University> getUniversity(var id) async {
    return UniversityRepository().getUniversity(id);
  }

  Future<List<University>> getUniversities(int page, size) async {
    return UniversityRepository().getUniversities(page, size);
  }

  Future<List<University>> getUniversitiesBySpecialtyId(
      int page, size, id) async {
    return UniversityRepository().getUniversitiesBySpecialtyId(page, size, id);
  }
}
