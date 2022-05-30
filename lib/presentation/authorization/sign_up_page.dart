import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_in_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/enums.dart';
import 'package:true_vocation_mobile/utils/routes.dart';
import 'package:true_vocation_mobile/utils/text_input_masks.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final birthDateController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    rePasswordController.dispose();
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'У вас есть аккаунт?',
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
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    children: getUserInfo(_formKey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getUserInfo(_formKey) {
    return [
      CustomTextFormField(
        readOnly: false,
        controller: nameController,
        labelText: 'Имя',
        autofocus: true,
      ),
      const SizedBox(
        height: 12,
      ),
      CustomTextFormField(
        readOnly: false,
        controller: lastNameController,
        labelText: 'Фамилия',
      ),
      const SizedBox(
        height: 12,
      ),
      CustomTextFormField(
        readOnly: true,
        controller: birthDateController,
        labelText: 'Дата Рождения',
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            cancelText: 'Назад',
            confirmText: 'Ок',
            fieldLabelText: 'Выберите дату',
            errorInvalidText: 'Недопустимый формат даты',
            helpText: 'Выберите дату',
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy/MM/dd').format(pickedDate);
            setState(() {
              birthDateController.text = formattedDate;
            });
          }
        },
      ),
      const SizedBox(
        height: 48,
      ),
      CustomButton(
        loading: false,
        onPressed: () {
          if (_formKey.currentState!.validate()) {

          }
        },
        color: AppColors.blueColor,
        radius: 10,
        text: 'Продолжить',
      ),
    ];
  }

  List<Widget> getContactInfo(_formKey) {
    return [
      CustomTextFormField(
        readOnly: false,
        controller: loginController,
        labelText: 'Логин',
      ),
      const SizedBox(
        height: 12,
      ),
      CustomTextFormField(
        readOnly: false,
        controller: emailController,
        labelText: 'email',
      ),
      const SizedBox(
        height: 12,
      ),
      CustomTextFormField(
        readOnly: false,
        controller: phoneController,
        labelText: 'Номер телефона',
        keyboardType: InputTypes.number.toString(),
        textMask: TextInputMasks.phoneNumber.toString(),
      ),
      const SizedBox(
        height: 48,
      ),
      CustomButton(
        loading: false,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SignUpPage()),
            );
          }
        },
        color: AppColors.blueColor,
        radius: 10,
        text: 'Продолжить',
      ),
    ];
  }

  List<Widget> getPasswordInfo(_formKey) {
    return [
      CustomTextFormField(
        readOnly: false,
        controller: passwordController,
        labelText: 'Пароль',
      ),
      const SizedBox(
        height: 12,
      ),
      CustomTextFormField(
        readOnly: false,
        controller: rePasswordController,
        labelText: 'Подтвердите пароль',
      ),
      const SizedBox(
        height: 48,
      ),
      CustomButton(
        loading: false,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SignUpPage()),
            );
          }
        },
        color: AppColors.blueColor,
        radius: 10,
        text: 'Продолжить',
      ),
    ];
  }
}
