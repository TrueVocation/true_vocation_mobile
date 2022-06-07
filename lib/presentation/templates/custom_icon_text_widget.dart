import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class CustomIconTextWidget extends StatelessWidget {
  const CustomIconTextWidget({Key? key, required this.children,})
      : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: double.maxFinite,
      color: AppColors.greyColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
