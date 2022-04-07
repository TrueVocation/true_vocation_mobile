import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

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
    return ClipRRect(
      child: SizedBox(
        height: 128,
        width: 128,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blackColor.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                university!.logo,
              ),
            ),
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
