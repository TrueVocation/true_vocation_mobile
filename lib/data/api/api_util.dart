
import 'package:true_vocation_mobile/data/api/request/get_university_body.dart';
import 'package:true_vocation_mobile/data/api/service/university_service.dart';
import 'package:true_vocation_mobile/data/mapper/university_mapper.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';

class ApiUtil {
  final UniversityService _universityService;

  ApiUtil(
      this._universityService
      );

  Future<University> getUniversity({
  required String name
  }) async {
    final body = GetUniversityBody(name: name);
    final result = await _universityService.getUniversity(body);

    return UniversityMapper.fromApi(result);
  }
}