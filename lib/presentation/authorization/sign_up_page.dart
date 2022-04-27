import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_in_page.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: CustomAppBar(
        name: '',
        color: AppColors.backgroundColor,
        leading: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Регистрация',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'У вас есть аккаунт?',
                    style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                    child: Text(
                      'Войти',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const CustomTextFormField(
                    icon: '',
                    labelText: 'Номер телефона',
                    maskType: 'phoneNumber',
                    keyboardType: TextInputType.number,
                    autoFocus: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextFormField(
                    icon: '',
                    labelText: 'Пароль',
                    maskType: 'password',
                    keyboardType: TextInputType.text,
                    autoFocus: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextFormField(
                    icon: '',
                    labelText: 'Подтвердите пароль',
                    maskType: 'password',
                    keyboardType: TextInputType.text,
                    autoFocus: false,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColors.blueColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
                    child: const SizedBox(
                      height: 48,
                      width: double.maxFinite,
                      child: Center(
                        child: Text('Продолжить'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
