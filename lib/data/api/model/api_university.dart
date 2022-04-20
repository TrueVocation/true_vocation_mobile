
import 'package:true_vocation_mobile/domain/model/speciality.dart';

import '../../../domain/model/university.dart';

class ApiUniversity {
  final String name;
  final String description;
  final String address;
  final String code;
  final String logo;
  final String averagePrice;
  final bool hostel;
  final bool militaryDepartment;
  final String status;
  final List<Speciality> specialities;
  final List<Picture> images;

  ApiUniversity.fromApi(Map<String, dynamic> map, this.description, this.address, this.code, this.logo, this.averagePrice, this.hostel, this.militaryDepartment, this.status, this.specialities, this.images)
      : name = map['field']['value'];
}
