import 'package:dio/dio.dart';

class ApiConstants {
  static final Dio dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
  static const int getListSize = 5;
  static const double listPageIconOpacity = 0.7;
  static const double mainHorizontalPadding = 24;
  static const String baseUrl = "http://10.10.14.18:8080";
  //static const String baseUrl = "https://true-vocation.herokuapp.com";
}
