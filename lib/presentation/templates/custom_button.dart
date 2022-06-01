import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    this.text,
    required this.borderColor,
    this.color,
    this.radius,
    this.width,
    this.textColor,
    required this.loading,
    this.loadingColor,
  }) : super(key: key);

  final String? text;
  final Color borderColor;
  final Color? color;
  final Color? textColor;
  final Color? loadingColor;
  final double? radius;
  final double? width;
  final void Function() onPressed;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!),
            side: BorderSide(
              color: borderColor,
            )
          ),
        ),
      ),
      child: SizedBox(
        height: 48,
        width: width,
        child: Center(
          child: loading == false ? Text(
            text!,
            style: TextStyle(color: textColor ?? AppColors.whiteColor),
          ) : Center(
            child: CircularProgressIndicator(
              color: loadingColor ?? AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
