import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/speciality_service.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/presentation/speciality/about_speciality.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_container_button_tabbar_view.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/detail_page_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/functions.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class AboutProfession extends StatefulWidget {
  const AboutProfession({Key? key, required this.profession}) : super(key: key);

  final Professions? profession;

  @override
  State<AboutProfession> createState() => _AboutProfessionState();
}

class _AboutProfessionState extends State<AboutProfession> {
  List<Speciality> list = [];

  bool loading = true;
  int page = 0;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    list = (await SpecialityService().getSpecialitiesByProfession(
            page, ApiConstants.getListSize, widget.profession!.id))
        .cast<Speciality>();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loading = false;
        },
      ),
    );
  }

  void _onRefresh() async {
    page = 0;
    _getData();
    _refreshController.refreshCompleted();
    _refreshController.loadComplete();
  }

  void _onLoading() async {
    page++;
    List<Speciality> newList = await SpecialityService()
        .getSpecialitiesByProfession(
            page, ApiConstants.getListSize, widget.profession!.id);
    list.addAll(newList);
    if (newList.isEmpty) {
      setState(() {
        _refreshController.loadNoData();
      });
    } else {
      setState(() {
        _refreshController.loadComplete();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DetailPageTemplate(
      appBarName: 'О профессии',
      appBarBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Востребованность:',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Roboto'),
          ),
          CustomContainer(
            color:
                ApiFunctions.getColorEmployee(widget.profession!.employability)
                    .withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                widget.profession!.employability,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          )
        ],
      ),
      objectName: widget.profession!.name,
      objectNameShort: widget.profession!.name,
      iconPreset: AppIcons.prof,
      tabLength: 2,
      tabs: const [
        CustomTabs(name: 'Подробнее'),
        CustomTabs(name: 'Специальности'),
      ],
      tabBarView: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: ApiConstants.mainHorizontalPadding, vertical: 16),
          child: CustomPageScroll(color: AppColors.whiteColor, children: const [
            Text(
                'gbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjv'),
          ]),
        ),
        RefreshTemplate(
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: CustomPageScroll(
            color: AppColors.whiteColor,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: loading == true
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : getSpec(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getSpec() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainerButtonTabbarView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              list[index].name,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  fontFamily: 'Roboto'),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'Цена обучения:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  list[index].price.toString() + 'тг.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
        function: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutSpeciality(
                speciality: list[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
