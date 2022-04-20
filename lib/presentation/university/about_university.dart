import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/shadows.dart';

class AboutUniversity extends StatelessWidget {
  const AboutUniversity({Key? key, this.university}) : super(key: key);
  final University? university;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: 'О ВУЗе',
        color: AppColors.backgroundColor,
        leading: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Stack(children: [
        body(),
        Positioned(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: logo(),
            ),
          ),
        ),
      ]),
    );
  }

  Widget body() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 80),
      child: CustomContainer(
        width: 500,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16, top: 88),
                child: Column(
                  children: [
                    Text(
                      university!.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: 'Roboto'),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      university!.address,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          fontFamily: 'Roboto'),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      university!.code,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget logo() {
    return Container(
      width: 128,
      height: 128,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: AppColors.whiteColor.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            color: AppShadows.color.withOpacity(0.1),
            blurRadius: 2,
          ),
        ],
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.network(
            university!.logo,
          ),
        ),
      ),
    );
  }
}
