import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class CustomContainerButtonTabbarView extends StatelessWidget {
  const CustomContainerButtonTabbarView({
    Key? key,
    required this.child,
    required this.function,
  }) : super(key: key);

  final void Function() function;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: CustomContainer(
        shadowColor: AppColors.purple.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              child,
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomSvgIcon(
                  preset: AppIcons.arrowCircle,
                  color: AppColors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
