import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/profession_service.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/presentation/professions/about_professions_page.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_dialog_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class MainProfessionPage extends StatefulWidget {
  const MainProfessionPage({Key? key}) : super(key: key);

  @override
  State<MainProfessionPage> createState() => _ProfessionMainPage1State();
}

class _ProfessionMainPage1State extends State<MainProfessionPage> {
  List<Professions> list = [];

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
    list = (await ProfessionService()
            .getProfessions(page, ApiConstants.getListSize))
        .cast<Professions>();
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
    List<Professions> newList = await ProfessionService()
        .getProfessions(page, ApiConstants.getListSize);
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

  final myController = TextEditingController();
  int colorFlag = 0;

  List<Region> regions = [
    Region('1', 'Алматы'),
    Region('2', 'Нур-Султан'),
    Region('3', 'Шымкент'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: 'Профессии',
        leading: true,
        color: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: ApiConstants.mainHorizontalPadding),
            child: Column(
              children: [
                CustomTextFormField(
                  readOnly: false,
                  controller: myController,
                  labelText: 'Поиск',
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    title: Text(
                      'Результаты',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'было найдено ' + list.length.toString() + ' совпадений',
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            var _singleNotifier =
                                Provider.of<SingleNotifier>(context);
                            return CustomDialog(
                              child: Column(
                                children: [
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder: (BuildContext context,
                                        int regionIndex) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: regions
                                            .map((e) => RadioListTile<Region>(
                                                title: Text(
                                                  e.name,
                                                  style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                                activeColor:
                                                    AppColors.blueColor,
                                                value: e,
                                                groupValue: _singleNotifier
                                                    .currentRegion,
                                                selected: _singleNotifier
                                                        .currentRegion ==
                                                    e,
                                                onChanged: (value) {
                                                  if (value !=
                                                      _singleNotifier
                                                          .currentRegion) {
                                                    _singleNotifier
                                                        .updateRegion(value!);
                                                    Navigator.of(context).pop();
                                                  }
                                                }))
                                            .toList(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: CustomSvgIcon(
                        preset: AppIcons.filter,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          loading == true
              ? const Center(child: CircularProgressIndicator())
              : getProfessions(),
        ],
      ),
    );
  }

  Widget getProfessions() {
    return Expanded(
      child: RefreshTemplate(
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: CustomPageScroll(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: ApiConstants.mainHorizontalPadding,
                  right: ApiConstants.mainHorizontalPadding,
                  bottom: 24),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length,
                separatorBuilder: (_, index) => const SizedBox(
                  height: 8,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutProfession(
                                profession: list[index],
                              )),
                    );
                  },
                  child: CustomContainer(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: CustomSvgIcon(
                              preset: AppIcons.prof,
                              size: 36,
                              color: getRandomColor(),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            flex: 3,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getRandomColor() {
    switch (colorFlag) {
      case 0:
        colorFlag = 1;
        return AppColors.blueColor;
      case 1:
        colorFlag = 2;
        return AppColors.yellowColor;
      default:
        colorFlag = 0;
        return AppColors.redColor;
    }
  }
}
