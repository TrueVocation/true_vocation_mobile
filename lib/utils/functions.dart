import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class ApiFunctions {
  static Color getColorEmployee(String value){
    switch (value) {
      case 'низкое':
        return AppColors.redColor;
      case 'среднее':
        return AppColors.yellowColor;
      default:
        return AppColors.greenColor;
    }
  }
}