import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Выбирите регион',
        style: TextStyle(
          color: AppColors.blackColor,
          fontWeight: FontWeight.w500
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: child
          ),
        ),
      ),
    );
  }
}
