import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/data/api/service/test_service.dart';
import 'package:true_vocation_mobile/domain/model/test_result.dart';
import 'package:true_vocation_mobile/domain/model/user_aptitudes.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/routes.dart';

class TestResultPage extends StatefulWidget {
  const TestResultPage({Key? key}) : super(key: key);

  @override
  State<TestResultPage> createState() => _TestResultPageState();
}

class _TestResultPageState extends State<TestResultPage> {
  late TestResult result;
  late List<UserAptitudes> aptitudes = [];

  bool loading = true;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    result = (await TestService().getTestResult(AppConstants.currentUser.id));
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loading = false;
          aptitudes = result.userAptitudes!;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: true,
        name: 'Результат',
        color: AppColors.backgroundColor,
        routeName: AppRoutes.mainPage,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: loading == true
          ? const Center(child: CircularProgressIndicator())
          : getResults(),
    );
  }

  Widget getResults() {
    return CustomPageScroll(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: AppConstants.mainHorizontalPadding,
              right: AppConstants.mainHorizontalPadding,
              bottom: 24),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: aptitudes.length,
            separatorBuilder: (_, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index) => CustomContainer(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                aptitudes[index].score.toString(),
                                style: TextStyle(
                                    color: AppColors.blueColor, fontSize: 16),
                              ),
                              Text(
                                '/12',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            aptitudes[index].aptitudeDTO!.name!,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Divider(
                      color: AppColors.blueColor,
                      thickness: 1,
                    ),
                    Text(
                      aptitudes[index].aptitudeDTO!.description!,
                      style: TextStyle(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: AppConstants.mainHorizontalPadding,
              right: AppConstants.mainHorizontalPadding,
              bottom: 16),
          child: CustomButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pushReplacementNamed(AppRoutes.testPage);
            },
            color: AppColors.blueColor,
            radius: 10,
            text: 'Пройти тест снова',
            borderColor: AppColors.blueColor,
            loading: false,
          ),
        ),
      ],
    );
  }
}
