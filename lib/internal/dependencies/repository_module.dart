
import 'package:true_vocation_mobile/data/repository/university_data_repository.dart';
import 'package:true_vocation_mobile/domain/repository/university_repository.dart';
import 'package:true_vocation_mobile/internal/dependencies/api_module.dart';

class RepositoryModule {
  static UniversityRepository _universityRepository;

  static UniversityRepository universityRepository(){
    if (_universityRepository == null) {
      _universityRepository = UniversityDataRepository(ApiModule.apiUtil());
    }

    return _universityRepository;
  }
}