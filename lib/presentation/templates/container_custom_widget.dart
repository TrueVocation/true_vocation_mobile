import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/shadows.dart';

class ContainerCustom extends StatelessWidget {
  const ContainerCustom({Key? key, this.child, this.margin, this.borderRadius})
      : super(key: key);

  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
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
