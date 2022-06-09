import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/professions/about_professions_page.dart';
import 'package:true_vocation_mobile/presentation/speciality/about_speciality.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_container_button_tabbar_view.dart';
import 'package:true_vocation_mobile/presentation/university/about_university.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/exceptions.dart';

class ApiFunctions {
  static void getError(int code, String title, BuildContext context) {
    switch (code) {
      case 500:
        return AppExceptions.serverError(context);
      case 201:
        return AppExceptions.successRegistration(context);
      default:
        return AppExceptions.custom(title, context, '', false);
    }
  }

  static Color getColorEmployee(String value) {
    switch (value) {
      case 'низкое':
        return AppColors.redColor;
      case 'среднее':
        return AppColors.yellowColor;
      default:
        return AppColors.greenColor;
    }
  }

  static Widget getSpec(List<Speciality> list) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainerButtonTabbarView(
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
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
        function: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutSpeciality(
                speciality: list[index],
              ),
            ),
          );
        },
      ),
    );
  }

  static Widget getUni(List<University> list) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainerButtonTabbarView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 256,
              child: Text(
                list[index].name,
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
              list[index].address,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            )
          ],
        ),
        function: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutUniversity(
                university: list[index],
              ),
            ),
          );
        },
      ),
    );
  }

  static Widget getProf(List<Professions> list) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainerButtonTabbarView(
        child: SizedBox(
          width: 256,
          child: Text(
            list[index].name,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: AppColors.blackColor,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Roboto'),
          ),
        ),
        function: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutProfession(
                profession: list[index],
              ),
            ),
          );
        },
      ),
    );
  }

  static String phoneFormatter(String phoneNumber) {
    return phoneNumber.replaceAll(RegExp(r"\D"), "");
  }
}
