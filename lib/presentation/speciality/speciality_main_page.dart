import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class MainSpecialityPage extends StatefulWidget {
  const MainSpecialityPage({Key? key}) : super(key: key);

  @override
  State<MainSpecialityPage> createState() => _MainSpecialityPageState();
}

class _MainSpecialityPageState extends State<MainSpecialityPage> {
  List<Speciality> list = [
    Speciality("International Business Management	Finance",
        '100 000 - 200 000 тг.', 'Высокий'),
    Speciality("Financial Investments & Derivatives	Macroeconomics",
        '350 000 - 400 000 тг.', 'Высокий'),
    Speciality("Business Consulting", '750 000 - 900 000 тг.', 'Высокий'),
    Speciality("Advertising", '300 000 - 500 000 тг.', 'Средний'),
    Speciality("Business Economics", '100 000 - 200 000 тг.', 'Низкий'),
    Speciality("Business Law", '1 000 000 - 1 500 000 тг.', 'Средний'),
    Speciality("Business Ethics", '600 000 - 700 000 тг.', 'Высокий'),
    Speciality("Business Ethics", '600 000 - 700 000 тг.', 'Высокий'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: 'Специальности',
        leading: true,
        color: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: CustomContainer(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                      icon: CustomSvgIcon(
                        preset: AppIcons.search,
                        color: AppColors.greyColor,
                      ),
                      hintText: 'Поиск по названию',
                      hintStyle:
                          TextStyle(color: AppColors.greyColor, fontSize: 14),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
                ),
              ),
            ),
          ),
          getSpeciality(),
        ],
      ),
    );
  }

  Widget getSpeciality() {
    return Expanded(
      child: CustomPageScroll(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              separatorBuilder: (_, index) => const SizedBox(
                height: 8,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
/*                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUniversity(
                      university: universities[index],
                    )),
                  );*/
                },
                child: CustomContainer(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].name,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    fontFamily: 'Roboto'),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                list[index].price,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.greyColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    fontFamily: 'Roboto'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Трудоустройство:',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'Roboto'),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    list[index].employment,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: getColor(list[index].employment),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'Roboto'),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Color getColor(String value) {
    switch (value) {
      case 'Низкий':
        return AppColors.redColor;
      case 'Средний':
        return AppColors.yellowColor;
      default:
        return AppColors.greenColor;
    }
  }
}
