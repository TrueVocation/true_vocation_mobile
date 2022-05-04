import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class CustomPageScroll extends StatelessWidget {
  const CustomPageScroll({Key? key, this.children, this.physics}) : super(key: key);

   final List<Widget>? children;
   final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: SingleChildScrollView(
        physics: physics ?? const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: children!,
        ),
      ),
    );
  }
}
