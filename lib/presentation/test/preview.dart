import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_illustration_widget.dart';
import 'package:true_vocation_mobile/presentation/test/test_page.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/illustrations.dart';

class PreviewTestPage extends StatefulWidget {
  const PreviewTestPage({Key? key}) : super(key: key);

  @override
  State<PreviewTestPage> createState() => _PreviewTestPageState();
}

class _PreviewTestPageState extends State<PreviewTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowColor,
      appBar: CustomAppBar(
        name: 'Тест',
        leading: true,
        color: AppColors.yellowColor,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(left: 32, right: 32, top: 48, bottom: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: CustomIllustration(
                preset: AppIllustration.previewTest,
              ),
            ),
            Column(
              children: [
                Text(
                  'Определение профессиональных склонностей',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'известный профориентационный тест, отличающийся простотой прохождения и достоверностью результатов. Подходит для школьников, выпускников школ, абитуриентов и даже взрослых людей. Исследует 6 склонностей к различным направлениям профессиональной деятельности с учётом степени их выраженности.',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontFamily: 'Roboto',
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainTestPage()),
                );
              },
              color: AppColors.blueColor,
              radius: 10,
              text: 'Пройти тест',
            ),
          ],
        ),
      ),
    );
  }
}
