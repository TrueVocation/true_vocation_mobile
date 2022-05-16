import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/subjects.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/professions/about_professions_page.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/detail_page_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/presentation/university/about_university.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class AboutSpeciality extends StatefulWidget {
  const AboutSpeciality({Key? key, this.speciality}) : super(key: key);

  final Speciality? speciality;

  @override
  State<AboutSpeciality> createState() => _AboutSpecialityState();
}

class _AboutSpecialityState extends State<AboutSpeciality> {
  List<Subject> list = [
    Subject('1', 'Математика'),
    Subject('2', 'Физика'),
  ];

  late List<University> universities = [];

  List<Professions> listProf = [
    Professions('Software Developer'),
    Professions('UI/UX designer'),
    Professions('Data Analyst'),
    Professions('Quality Assurance'),
  ];

  @override
  Widget build(BuildContext context) {
    return DetailPageTemplate(
      objectName: widget.speciality!.name,
      objectNameShort: widget.speciality!.name,
      appBarName: 'О специальности',
      appBarBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Трудоустройства:',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Roboto'),
          ),
          CustomContainer(
            color: getColor(widget.speciality!.employment).withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                widget.speciality!.employment,
                style: TextStyle(
                    color: AppColors.whiteColor, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
      iconPreset: AppIcons.spec,
      tabLength: 3,
      tabs: const [
        CustomTabs(name: 'Подробнее'),
        CustomTabs(name: 'Вузы'),
        CustomTabs(name: 'Профессии'),
      ],
      tabBarView: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: CustomPageScroll(
            color: AppColors.whiteColor,
            children: const [
              Text(
                  'gbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjv'),
            ],
          ),
        ),
        CustomPageScroll(
          color: AppColors.whiteColor,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: getUni(),
            ),
          ],
        ),
        CustomPageScroll(
          color: AppColors.whiteColor,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: getProf(),
            ),
          ],
        ),
      ],
    );
  }

  Widget getUni() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: universities.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainer(
        shadowColor: AppColors.purple.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 256,
                    child: Text(
                      universities[index].name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    universities[index].address,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  )
                ],
              ),
              IconButton(
                icon: CustomSvgIcon(
                  preset: AppIcons.arrowCircle,
                  color: AppColors.purple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutUniversity(
                              university: universities[index],
                            )),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getProf() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listProf.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainer(
        shadowColor: AppColors.purple.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 256,
                child: Text(
                  listProf[index].name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontFamily: 'Roboto'),
                ),
              ),
              IconButton(
                icon: CustomSvgIcon(
                  preset: AppIcons.arrowCircle,
                  color: AppColors.purple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutProfession(
                        profession: listProf[index],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Color getColor(String value) {
    switch (value) {
      case 'Низкое':
        return AppColors.redColor;
      case 'Среднее':
        return AppColors.yellowColor;
      default:
        return AppColors.greenColor;
    }
  }
}
