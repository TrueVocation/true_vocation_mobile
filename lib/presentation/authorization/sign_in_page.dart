import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_up_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/enums.dart';
import 'package:true_vocation_mobile/utils/routes.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key, this.phoneNumber}) : super(key: key);

  final String? phoneNumber;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var _singleNotifier = Provider.of<SingleNotifier>(context);
    phoneController.text = _singleNotifier.login;

    return Scaffold(
      appBar: CustomAppBar(
        name: '',
        color: AppColors.backgroundColor,
        leading: true,
        routeName: ApiRoutes.loginPage,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: ApiConstants.mainHorizontalPadding),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Войти',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'У вас нет аккаунта?',
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                    );
                  },
                  child: Text(
                    'Зарегистрироваться',
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
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
                  CustomTextFormField(
                    readOnly: false,
                    labelText: 'Номер телефона',
                    controller: phoneController,
                    textMask: MaskTypes.phoneNumber.toString(),
                    keyboardType: InputTypes.number.toString(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                    readOnly: false,
                    labelText: 'Пароль',
                    controller: passwordController,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  CustomButton(
                    loading: false,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _singleNotifier.updateLoginValue(phoneController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
                        );
                      }
                    },
                    color: AppColors.blueColor,
                    radius: 10,
                    text: 'Продолжить',
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
