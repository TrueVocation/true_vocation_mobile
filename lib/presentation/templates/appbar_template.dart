import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, this.name, this.leading, this.color}) : super(key: key);

  final bool? leading;
  final String? name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      centerTitle: true,
      title: Text(name!),
      titleTextStyle: TextStyle(
        color: AppColors.blackColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      ),
      elevation: 0,
      bottomOpacity: 0,
      toolbarHeight: 64,
      automaticallyImplyLeading: false,
      leading: leading!
          ? IconButton(
        icon: CustomSvgIcon(
          preset: AppIcons.backArrow2,
        ),
        color: AppColors.blackColor,
        onPressed: () => Navigator.pop(context),
      )
          : const Text(''),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
