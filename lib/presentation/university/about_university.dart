import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/speciality_service.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/speciality/about_speciality.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/detail_page_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class AboutUniversity extends StatefulWidget {
  const AboutUniversity({Key? key, this.university}) : super(key: key);
  final University? university;

  @override
  State<AboutUniversity> createState() => _AboutUniversityState();
}

class _AboutUniversityState extends State<AboutUniversity> {

  late List<Speciality> list = [];

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
    list = (await SpecialityService()
        .getSpecialitiesByUniversity(page, ApiConstants.getListSize, widget.university!.id))
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
        .getSpecialitiesByUniversity(page, ApiConstants.getListSize, widget.university!.id);
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
      objectName: widget.university!.name,
      fontSize: 18,
      objectNameShort: widget.university!.address,
      fontSizeShort: 14,
      appBarName: 'О ВУЗе',
      iconPreset: AppIcons.uni,
      tabLength: 2,
      tabs: const [
        CustomTabs(name: 'Подробнее'),
        CustomTabs(name: 'Специальности'),
      ],
      tabBarView: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: CustomPageScroll(
            color: AppColors.whiteColor,
            children: const [
              Text(
                  'gbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjv'
              ),
            ],
          ),
        ),
        CustomPageScroll(
          color: AppColors.whiteColor,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child:
              loading == true
                  ? const Center(child: CircularProgressIndicator())
                  : getSpec(),
            ),
          ],
        ),
      ],
      appBarBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          getIcon(AppIcons.location),
          getIcon(AppIcons.call),
        ],
      ),
    );
  }

  Widget getSpec() {
    return RefreshTemplate(
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
        separatorBuilder: (_, index) =>
        const SizedBox(
          height: 12,
        ),
        itemBuilder: (context, index) =>
            CustomContainer(
              shadowColor: AppColors.purple.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 256,
                          child: Text(
                            list[index].name,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Цена обучения: ' + list[index].price.toString() + 'тг.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 12
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      icon: CustomSvgIcon(
                        preset: AppIcons.arrowCircle,
                        color: AppColors.purple,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                              AboutSpeciality(
                                speciality: list[index],
                              ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
      ),
    );
  }

  Widget getIcon(icon) {
    return CustomContainer(
      borderRadius: BorderRadius.circular(100),
      color: AppColors.purple,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomSvgIcon(
          preset: icon,
          color: AppColors.whiteColor,
          size: 24,
        ),
      ),
    );
  }
}
