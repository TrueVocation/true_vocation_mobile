import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';
import 'package:true_vocation_mobile/utils/shadows.dart';

class AboutProfession extends StatelessWidget {
  const AboutProfession({Key? key, required this.profession}) : super(key: key);

  final Professions? profession;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: true,
        name: 'О профессии',
        color: AppColors.whiteColor,
      ),
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profession!.name,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      profession!.name,
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
                CustomContainer(
                  height: 64,
                  width: 64,
                  color: AppColors.lightGreyColor.withOpacity(0.5),
                  shadowColor: AppShadows.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 12, sigmaX: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: CustomSvgIcon(
                        preset: AppIcons.arrowCircle,
                        color: AppColors.purple,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
