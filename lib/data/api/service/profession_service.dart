import 'package:true_vocation_mobile/data/api/repository/profession_repository.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';

class ProfessionService {
  Future<Professions> getProfession(var id) async {
    return ProfessionRepository().getProfession(id);
  }

  Future<List<Professions>> getProfessions(int page, size) async {
    return ProfessionRepository().getProfessions(page, size);
  }

  Future<List<Professions>> getProfessionsBySpeciality(
      int page, size, id) async {
    return ProfessionRepository().getProfessionsBySpeciality(page, size, id);
  }
}
