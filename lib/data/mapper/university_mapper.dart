import 'package:true_vocation_mobile/data/api/model/api_university.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';

class UniversityMapper {
  static University fromApi(ApiUniversity university) {
    return University(
        university.name,
        university.description,
        university.address,
        university.code,
        university.logo,
        university.averagePrice,
        university.hostel,
        university.militaryDepartment,
        university.status,
        university.specialities,
        university.images,
    );
  }
}
