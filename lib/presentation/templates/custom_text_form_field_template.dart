import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/text_input_masks.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.child})
      : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {

    return CustomContainer(
      border: true,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: child,
      ),
    );
  }

  static TextInputFormatter getMaskType(String maskType) {
    switch (maskType) {
      case 'phoneNumber':
        return TextInputMasks.phoneNumber;
      default:
        return TextInputMasks.defaultMask;
    }
  }
}
