import 'package:true_vocation_mobile/data/api/model/api_university.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';

class UniversityMapper {
  static University fromApi(ApiUniversity university) {
    return University(
      name: university.name,

    );
  }
}
