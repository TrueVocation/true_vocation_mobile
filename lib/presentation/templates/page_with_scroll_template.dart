import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class CustomPageScroll extends StatelessWidget {
  const CustomPageScroll({Key? key, this.children}) : super(key: key);

   final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: children!,
        ),
      ),
    );
  }
}
