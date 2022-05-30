import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/data/api/service/user_service.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_in_page.dart';
import 'package:true_vocation_mobile/presentation/authorization/sign_up_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/enums.dart';
import 'package:true_vocation_mobile/utils/routes.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  bool loading = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _singleNotifier = Provider.of<SingleNotifier>(context);
    myController.text = _singleNotifier.login;

    return Scaffold(
      appBar: CustomAppBar(
        leading: true,
        name: '',
        color: AppColors.backgroundColor,
        routeName: ApiRoutes.mainPage,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: ApiConstants.mainHorizontalPadding),
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
                  CustomTextFormField(
                    readOnly: false,
                    controller: myController,
                    labelText: 'Номер телефона',
                    autofocus: true,
                    keyboardType: InputTypes.number.toString(),
                    textMask: MaskTypes.phoneNumber.toString(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        loading = true;
                        var res = (await UserService().checkUserExistence(myController.text));
                        if (res) {
                          loading = false;
                          _singleNotifier.updateLoginValue(myController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()),
                          );
                        }else{
                          loading = false;
                          _singleNotifier.updateLoginValue(myController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()),
                          );
                        }
                      }
                    },
                    loading: loading,
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
