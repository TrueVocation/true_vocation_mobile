import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_up_page.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_in_page.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/presentation/university/university_page.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: true,
        name: '',
        color: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Вход/Регистрация',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Введите номер телефона, чтобы продолжить',
              style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
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
                    hintText: '',
                    labelText: 'Номер телефона',
                    maskType: 'phoneNumber',
                    keyboardType: TextInputType.number,
                    autoFocus: true,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onLongPress: (){
                      if (_formKey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      }
                    },
                    onPressed: () {
                      if (_formKey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
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
