import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/presentation/speciality/about_speciality.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/detail_page_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class AboutProfession extends StatefulWidget {
  const AboutProfession({Key? key, required this.profession}) : super(key: key);

  final Professions? profession;

  @override
  State<AboutProfession> createState() => _AboutProfessionState();
}

class _AboutProfessionState extends State<AboutProfession> {
  List<Speciality> list = [];

  @override
  Widget build(BuildContext context) {
    return DetailPageTemplate(
      appBarName: 'О профессии',
      appBarBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Востребованность:',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Roboto'),
          ),
          CustomContainer(
            color: getColorProf(widget.profession!.employability).withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                widget.profession!.employability,
                style: TextStyle(
                    color: AppColors.whiteColor, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
      objectName: widget.profession!.name,
      objectNameShort: widget.profession!.name,
      iconPreset: AppIcons.prof,
      tabLength: 2,
      tabs: const [
        CustomTabs(name: 'Подробнее'),
        CustomTabs(name: 'Специальности'),
      ],
      tabBarView: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: CustomPageScroll(color: AppColors.whiteColor, children: const [
            Text(
                'gbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjv'),
          ]),
        ),
        CustomPageScroll(
          color: AppColors.whiteColor,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: getSpec(),
            ),
          ],
        ),
      ],
    );
  }

  Widget getSpec() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
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
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Цена обучения:',
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
                        list[index].price.toString() + 'тг.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      )
                    ],
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
                        builder: (context) => AboutSpeciality(
                              speciality: list[index],
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

  Color getColorProf(String value) {
    switch (value) {
      case 'низкое':
        return AppColors.redColor;
      case 'среднее':
        return AppColors.yellowColor;
      default:
        return AppColors.greenColor;
    }
  }
}
