import 'package:true_vocation_mobile/domain/repository/university_repository.dart';

class RepositoryModule {
  static late UniversityRepository _universityRepository;

  static UniversityRepository universityRepository() {
    _universityRepository;

    return _universityRepository;
  }
}
