import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class CustomSvgIcon extends StatelessWidget {
  const CustomSvgIcon({Key? key, this.preset, this.color}) : super(key: key);

  final String? preset;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppIcons.way + preset!,
      color: color,
    );
  }
}
