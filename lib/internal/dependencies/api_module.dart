
import 'package:true_vocation_mobile/data/api/api_util.dart';
import 'package:true_vocation_mobile/data/api/service/university_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil(){
    if (_apiUtil == null){
      _apiUtil = ApiUtil(UniversityService());
    }
    return _apiUtil;
  }
}