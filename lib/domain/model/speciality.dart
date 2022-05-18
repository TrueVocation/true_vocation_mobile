import 'package:true_vocation_mobile/domain/model/faculty.dart';

class Speciality {
  final int id;
  final String description;
  final int totalGrants;
  final int minScoreGeneral;
  final int minScoreQuota;
  final String type;
  final String name;
  final int price;
  final String employment;

  Speciality(this.id, this.description, this.totalGrants, this.minScoreGeneral, this.minScoreQuota, this.type, this.name, this.price, this.employment);

  factory Speciality.fromApi(Map<String, dynamic> json) {
    return Speciality(
      json['id'],
      json['description'],
      json['totalGrants'],
      json['minScoreGeneral'],
      json['minScoreQuota'],
      json['type'],
      json['name'],
      json['price'],
      json['employment'],
    );
  }
}