import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/routes.dart';

class AppExceptions {
  static void serverError(BuildContext context) {
    return custom('На стороне сервера возникла ошибка', context, '', false);
  }

  static void successRegistration(BuildContext context) {
    return custom(
        'На указанную почту было отправлено письмо для активации аккаунта',
        context,
        AppRoutes.mainPage,
        true);
  }

  static void custom(String text, context, routeName, bool action) {
    Widget okButton = TextButton(
      child: const Text("Да"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true)
            .pushReplacementNamed(routeName);
      },
    );
    AlertDialog alert = AlertDialog(
      content: Text(text),
      actions: [
        if (action) okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
