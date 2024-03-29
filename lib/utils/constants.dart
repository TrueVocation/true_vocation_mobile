import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class AppConstants {
  static final Dio dio = Dio(BaseOptions(baseUrl: AppConstants.baseUrl));
  static int getListSize = 8;
  static AppUser currentUser = const AppUser();
  static const double listPageIconOpacity = 0.7;
  static const double mainHorizontalPadding = 24;
  static TextStyle textButtonStyle = TextStyle(
      color: AppColors.greyColor, fontSize: 16, fontWeight: FontWeight.normal);
  static const String baseUrl = "http://192.168.0.181:8080";
  static String userToken = '';
  //static const String baseUrl = "https://true-vocation.herokuapp.com";
}
