import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class DetailsDescriptionWidget extends StatelessWidget {
  const DetailsDescriptionWidget({Key? key, required this.text}) : super(key: key);

  final String text;

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
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          softWrap: true,
        ),
      ),
    );
  }
}
