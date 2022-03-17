import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/shadows.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, this.child, this.margin, this.borderRadius, this.height, this.width})
      : super(key: key);

  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppShadows.color,
            offset: AppShadows.offset,
            blurRadius: AppShadows.blur
            )
        ]
      ),
      child: child,
    );
  }
}
