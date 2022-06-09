import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/data/api/service/user_service.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/presentation/authorization/authorization_page.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_in_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/enums.dart';
import 'package:true_vocation_mobile/utils/functions.dart';
import 'package:true_vocation_mobile/utils/icons.dart';
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
  Color borderColor = AppColors.greyColor;
  Color borderColorEmail = AppColors.greyColor;
  Color borderColorLogin = AppColors.greyColor;
  bool obscureText = true;
  bool obscureTextRe = true;
  bool loading = false;
  String? errorEmail;
  String? errorLogin;

  int _selectedIndex = 0;

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    rePasswordController.dispose();
    passwordController.dispose();
    nameController.dispose();
    lastNameController.dispose();
    loginController.dispose();
    birthDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var _singleNotifier = Provider.of<SingleNotifier>(context);
    phoneController.text = _singleNotifier.phone;

    List<List<Widget>> _widgetOptions = [
      getUserInfo(_formKey),
      getContactInfo(_formKey),
      getPasswordInfo(_formKey),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        name: '',
        color: AppColors.backgroundColor,
        leading: true,
        routeName: AppRoutes.loginPage,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.mainHorizontalPadding),
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
                    children: _widgetOptions[_selectedIndex],
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
            fieldHintText: 'Year/Month/Day',
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
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              birthDateController.text = formattedDate;
            });
          }
        },
      ),
      const SizedBox(
        height: 48,
      ),
      getButtons(_formKey, () {
        if (_formKey.currentState!.validate()) {
          _onItemTapped(1);
        }
      }, () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AuthorizationPage()),
        );
      }, AppColors.backgroundColor, AppColors.blueColor, AppColors.blueColor)
    ];
  }

  List<Widget> getContactInfo(_formKey) {
    return [
      CustomTextFormField(
        readOnly: false,
        controller: loginController,
        errorText: errorLogin,
        borderColor: borderColorLogin,
        labelText: 'Логин',
      ),
      const SizedBox(
        height: 12,
      ),
      CustomTextFormField(
        readOnly: false,
        controller: emailController,
        errorText: errorEmail,
        borderColor: borderColorEmail,
        labelText: 'email',
        keyboardType: InputTypes.email.toString(),
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
      getButtons(_formKey, () async {
        if (_formKey.currentState!.validate()) {
          setState(() {
            loading = true;
          });
          var email = (await UserService().checkEmail(emailController.text));
          var login = (await UserService().checkLogin(loginController.text));
          setState(() {
            loading = false;
          });
          if (email) {
            setState(() {
              borderColorEmail = AppColors.redColor;
              errorEmail = 'Этот email уже используется';
            });
          }
          if (login) {
            setState(() {
              borderColorLogin = AppColors.redColor;
              errorLogin = 'Этот логин уже используется';
            });
          }
          if (email == false && login == false) {
            _onItemTapped(2);
          }
        } else {
          setState(() {
            loading = true;
          });
          var email = (await UserService().checkEmail(emailController.text));
          var login = (await UserService().checkLogin(loginController.text));
          setState(() {
            loading = false;
          });
          if (!email) {
            setState(() {
              borderColorEmail = AppColors.greyColor;
              errorEmail = null;
            });
          }
          if (!login) {
            setState(() {
              borderColorLogin = AppColors.greyColor;
              errorLogin = null;
            });
          }
          if (email == false && login == false) {
            _onItemTapped(2);
          }
        }
      }, () {
        _onItemTapped(0);
      }, AppColors.backgroundColor, AppColors.blueColor, AppColors.blueColor)
    ];
  }

  List<Widget> getPasswordInfo(_formKey) {
    return [
      CustomTextFormField(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: CustomSvgIcon(
            preset: obscureText ? AppIcons.show : AppIcons.hide,
          ),
        ),
        obscureText: obscureText,
        borderColor: borderColor,
        readOnly: false,
        controller: passwordController,
        labelText: 'Пароль',
      ),
      const SizedBox(
        height: 12,
      ),
      CustomTextFormField(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureTextRe = !obscureTextRe;
            });
          },
          icon: CustomSvgIcon(
            preset: obscureTextRe ? AppIcons.show : AppIcons.hide,
          ),
        ),
        borderColor: borderColor,
        obscureText: obscureTextRe,
        readOnly: false,
        controller: rePasswordController,
        labelText: 'Подтвердите пароль',
      ),
      const SizedBox(
        height: 48,
      ),
      getButtons(_formKey, () async {
        if (_formKey.currentState!.validate()) {
          if (passwordController.text != rePasswordController.text) {
            changeBorderColor(AppColors.redColor);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Пароли не совпадают')),
            );
          } else {
            changeBorderColor(AppColors.greyColor);
            setState(() {
              loading = true;
            });
            var res = (await UserService().registrationUser(
              AppUser(
                birthdate: birthDateController.text,
                phoneNumber: ApiFunctions.phoneFormatter(phoneController.text),
                firstName: nameController.text,
                lastName: lastNameController.text,
                login: loginController.text,
                email: emailController.text,
                password: passwordController.text,
                user: User(
                  firstName: nameController.text,
                  lastName: lastNameController.text,
                  login: loginController.text,
                  email: emailController.text,
                  password: passwordController.text,
                ),
              ),
            ));
            setState(() {
              loading = false;
            });
            ApiFunctions.getError(res.code, res.title);
          }
        }
      }, () {
        _onItemTapped(1);
      }, AppColors.blueColor, AppColors.whiteColor, null)
    ];
  }

  void changeBorderColor(color) {
    setState(() {
      borderColor = color;
    });
  }

  Widget getButtons(_formKey, void Function() functionNext,
      void Function() functionBack, color, textColor, loadingColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: functionBack,
          child: Text(
            'Назад',
            style: AppConstants.textButtonStyle,
          ),
        ),
        CustomButton(
          loading: loading,
          loadingColor: loadingColor,
          onPressed: functionNext,
          borderColor: AppColors.blueColor,
          color: color,
          radius: 10,
          text: 'Продолжить',
          textColor: textColor,
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
