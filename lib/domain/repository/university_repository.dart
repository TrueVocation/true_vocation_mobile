import 'package:true_vocation_mobile/domain/model/university.dart';

abstract class UniversityRepository {
  Future<University> getUniversity({required var id});

  Future<List<University>> getUniversities({required var page});
}
