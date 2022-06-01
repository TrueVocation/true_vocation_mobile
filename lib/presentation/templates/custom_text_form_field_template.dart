import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/text_input_masks.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.autofocus,
    this.textMask,
    required this.labelText,
    this.onChanged,
    this.keyboardType,
    this.onTap,
    this.readOnly,
    this.obscureText,
    this.borderColor,
    this.suffixIcon,
    this.errorText,
  }) : super(key: key);

  final TextEditingController? controller;
  final bool? autofocus;
  final bool? obscureText;
  final String? textMask;
  final String? errorText;
  final String? labelText;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? keyboardType;
  final bool? readOnly;
  final Color? borderColor;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      border: true,
      borderColor: borderColor,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextFormField(
          readOnly: readOnly ?? false,
          onTap: onTap,
          onChanged: onChanged,
          controller: controller,
          keyboardType: keyboardType == null
              ? TextInputType.text
              : getInputType(keyboardType!),
          obscureText: obscureText ?? false,
          autofocus: false,
          validator: (value) {
            if (value!.isEmpty || errorText != null) {
              return errorText ?? '* Пустое поле';
            }
            return null;
          },
          inputFormatters: [
            textMask == null
                ? TextInputMasks.defaultMask
                : getMaskType(textMask!),
          ],
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            labelText: labelText!,
            labelStyle: TextStyle(color: AppColors.greyColor, fontSize: 14),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  TextInputFormatter getMaskType(String maskType) {
    switch (maskType) {
      case 'MaskTypes.phoneNumber':
        return TextInputMasks.phoneNumber;
      case 'MaskTypes.date':
        return TextInputMasks.date;
      default:
        return TextInputMasks.defaultMask;
    }
  }

  TextInputType getInputType(String keyboardType) {
    switch (keyboardType) {
      case 'InputTypes.number':
        return TextInputType.number;
      case 'InputTypes.email':
        return TextInputType.emailAddress;
      case 'InputTypes.date':
        return TextInputType.datetime;
      default:
        return TextInputType.text;
    }
  }
}
