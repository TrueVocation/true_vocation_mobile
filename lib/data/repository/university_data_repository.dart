import 'package:true_vocation_mobile/data/api/api_util.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/domain/repository/university_repository.dart';

class UniversityDataRepository extends UniversityRepository {
  final ApiUtil _apiUtil;

  UniversityDataRepository(this._apiUtil);

  @override
  Future<University> getUniversity({required String name}){
    return _apiUtil.getUniversity(name: name);
  }
}