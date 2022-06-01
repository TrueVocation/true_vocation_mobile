import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class ApiExceptions {

  static Widget serverError(int code) {
    return custom('На стороне сервера возникла ошибка', code);
  }

  static Widget successRegistration(int code) {
    return custom('На указанную почту было отправлено письмо для активации аккаунта', code);
  }

  static Widget custom(String? text, int code) {
     return CustomContainer(
       child: Text(
         text!,
         style: TextStyle(
           color: AppColors.blackColor,
           fontSize: 16,
         ),
       ),
       borderRadius: BorderRadius.circular(10),
     );
  }
}