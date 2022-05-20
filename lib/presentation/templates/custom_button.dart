import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.borderColor,
    this.color,
    this.radius,
    this.width,
  }) : super(key: key);

  final String? text;
  final Color? borderColor;
  final Color? color;
  final double? radius;
  final double? width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!),
          ),
        ),
      ),
      child: SizedBox(
        height: 48,
        width: width,
        child: Center(
          child: Text(
            text!,
            style: TextStyle(color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
