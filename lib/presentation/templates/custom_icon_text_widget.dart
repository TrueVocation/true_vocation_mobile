import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class CustomIconTextWidget extends StatelessWidget {
  const CustomIconTextWidget({Key? key, required this.title, required this.preset, required this.value})
      : super(key: key);

  final String title;
  final String preset;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.greyColor.withOpacity(0.07),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomSvgIcon(
                  preset: preset,
                  color: AppColors.blackColor,
                  size: 24,
                ),
                Text(
                  value,
                  style: TextStyle(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
