import 'package:true_vocation_mobile/domain/model/university.dart';

abstract class UniversityRepository {
  Future<University> getUniversity({required String name});
}
