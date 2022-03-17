import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet(
      {Key? key, this.children})
      : super(key: key);
  final List<Widget>? children;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      child: Container(
        color: AppColors.whiteColor,
        child: Container(
          margin: const EdgeInsets.only(right: 16, left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: children!,
          ),
        ),
      ),
    );
  }
}
