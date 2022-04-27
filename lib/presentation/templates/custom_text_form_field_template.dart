import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/text_input_masks.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.icon,
      this.hintText,
      this.maskType,
      this.keyboardType,
      this.autoFocus,
      this.text,
      this.labelText})
      : super(key: key);

  final String? icon;
  final String? hintText;
  final String? labelText;
  final String? text;
  final String? maskType;
  final TextInputType? keyboardType;
  final bool? autoFocus;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: text);

    return CustomContainer(
      border: true,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextFormField(
          controller: controller,
          obscureText: maskType! == 'password' ? true : false,
          keyboardType: keyboardType,
          autofocus: autoFocus == true ? true : false,
          validator: (value) {
            if (value!.length > 10 && value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          inputFormatters: [getMaskType(maskType!)],
          decoration: InputDecoration(
              icon: CustomSvgIcon(
                preset: icon?.isNotEmpty == true ? icon : '',
                color: AppColors.greyColor,
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: AppColors.greyColor, fontSize: 14),
              labelText: labelText,
              labelStyle: TextStyle(color: AppColors.greyColor, fontSize: 14),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none),
        ),
      ),
    );
  }

  TextInputFormatter getMaskType(String maskType) {
    switch (maskType) {
      case 'phoneNumber':
        return TextInputMasks.phoneNumber;
      default:
        return TextInputMasks.defaultMask;
    }
  }
}
