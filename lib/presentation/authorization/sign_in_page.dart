import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/data/api/service/user_service.dart';
import 'package:true_vocation_mobile/domain/model/login.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/domain/model/user.dart';
import 'package:true_vocation_mobile/domain/model/user_info.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_up_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/enums.dart';
import 'package:true_vocation_mobile/utils/icons.dart';
import 'package:true_vocation_mobile/utils/routes.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key, this.phoneNumber}) : super(key: key);

  final String? phoneNumber;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final phoneController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;
  bool obscureText = true;
  Color borderColor = AppColors.greyColor;

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
    phoneController.text = _singleNotifier.phone;

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
                    labelText: 'Ваш логин',
                    controller: loginController,
                    keyboardType: InputTypes.text.toString(),
                    borderColor: borderColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
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
                    readOnly: false,
                    controller: passwordController,
                    labelText: 'Пароль',
                    borderColor: borderColor,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  CustomButton(
                    borderColor: AppColors.blueColor,
                    loading: loading,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          loading = true;
                        });
                        var res = (await UserService().authenticateUser(Login(
                            username: loginController.text,
                            password: passwordController.text)));
                        if (res.code == 200) {
                          _singleNotifier.updateTokenValue(res.title!);
                          res = (await UserService()
                              .getUser(_singleNotifier.token));
                          if (res.code == 200) {
                            User user = User.fromJson(res.body);
                            res = (await UserService().getUserInfo(user.id!));
                            AppUser userInfo = AppUser.fromJson(res.body);
                            _singleNotifier.updateUser(AppUser(
                              id: userInfo.id,
                              phoneNumber: userInfo.phoneNumber,
                              birthdate: userInfo.birthdate,
                              user: user,
                            ));
                            AppConstants.currentUser =
                                _singleNotifier.currentUser;
                            AppConstants.userToken = _singleNotifier.token;
                            setState(() {
                              loading = false;
                            });
                            Navigator.of(context, rootNavigator: true)
                                .pushReplacementNamed(AppRoutes.mainPage);
                          }
                        } else {
                          setState(() {
                            loading = false;
                          });
                          changeBorderColor(AppColors.redColor);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'Неверные учетные данные пользователя')),
                          );
                        }
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

  void changeBorderColor(color) {
    setState(() {
      borderColor = color;
    });
  }
}
