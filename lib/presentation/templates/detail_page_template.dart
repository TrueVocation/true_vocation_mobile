import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/news.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class DetailPageTemplate extends StatefulWidget {
  const DetailPageTemplate({
    Key? key,
    required this.objectName,
    this.fontSize,
    required this.objectNameShort,
    this.fontSizeShort,
    required this.appBarName,
    required this.iconPreset,
    required this.tabLength,
    required this.tabs,
    required this.tabBarView,
    required this.appBarBody,
    this.university,
    this.professions,
    this.speciality,
    this.news,
    required this.favorite,
    required this.onPressed,
  }) : super(key: key);

  final String? objectName;
  final String? appBarName;
  final double? fontSize;
  final double? fontSizeShort;
  final String? objectNameShort;
  final String? iconPreset;
  final int? tabLength;
  final List<Widget>? tabs;
  final List<Widget>? tabBarView;
  final Widget? appBarBody;
  final University? university;
  final Professions? professions;
  final Speciality? speciality;
  final News? news;
  final bool favorite;
  final void Function() onPressed;

  @override
  State<DetailPageTemplate> createState() => _DetailPageTemplateState();
}

class _DetailPageTemplateState extends State<DetailPageTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: widget.onPressed,
        icon: CustomSvgIcon(
          preset: widget.favorite == false
              ? AppIcons.favoriteAdd
              : AppIcons.favoriteRemove,
          color: AppColors.purple,
        ),
      ),
      appBar: CustomAppBar(
        leading: true,
        name: widget.appBarName!,
        color: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.mainHorizontalPadding, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 280,
                      child: Text(
                        widget.objectName!,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: widget.fontSize ?? 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 280,
                      child: Text(
                        widget.objectNameShort!,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: widget.fontSizeShort ?? 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomContainer(
                  height: 64,
                  width: 64,
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(100),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: CustomSvgIcon(
                      preset: widget.iconPreset!,
                      color: AppColors.purple.withOpacity(0.3),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppConstants.mainHorizontalPadding,
                right: AppConstants.mainHorizontalPadding,
                bottom: 24),
            child: widget.appBarBody!,
          ),
          Expanded(
            child: CustomContainer(
              color: AppColors.whiteColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: DefaultTabController(
                  length: widget.tabLength!,
                  child: Column(
                    children: [
                      TabBar(
                        unselectedLabelColor: AppColors.greyColor,
                        labelColor: AppColors.purple,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.purple.withOpacity(0.2),
                        ),
                        tabs: widget.tabs!,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: widget.tabBarView!,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
