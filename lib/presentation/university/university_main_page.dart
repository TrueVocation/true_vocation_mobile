import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/university_service.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_dialog_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/presentation/university/about_university.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class MainUniversityPage extends StatefulWidget {
  const MainUniversityPage({Key? key}) : super(key: key);

  @override
  State<MainUniversityPage> createState() => _MainUniversityPageState();
}

class _MainUniversityPageState extends State<MainUniversityPage> {
  late List<University> list = [];

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
    list = (await UniversityService()
            .getUniversities(page, ApiConstants.getListSize))
        .cast<University>();
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
    List<University> newList = await UniversityService()
        .getUniversities(page, ApiConstants.getListSize);
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

  List<Region> regions = [
    Region('1', 'Алматы'),
    Region('2', 'Нур-Султан'),
    Region('3', 'Шымкент'),
  ];

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        name: 'ВУЗы',
        leading: true,
        color: AppColors.backgroundColor,
      ),
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
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'было найдено ' + list.length.toString() + ' совпадений',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.normal,
                      ),
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
                                            .map(
                                              (e) => RadioListTile<Region>(
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
                                                },
                                              ),
                                            )
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
              : getUniversities(),
        ],
      ),
    );
  }

  Widget getUniversities() {
    return Expanded(
      child: RefreshTemplate(
        controller: _refreshController,
        onLoading: _onLoading,
        onRefresh: _onRefresh,
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
                        builder: (context) => AboutUniversity(
                          university: list[index],
                        ),
                      ),
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
                            child: ClipRRect(
                              child: CustomSvgIcon(
                                preset: AppIcons.uni,
                                size: 36,
                                color: AppColors.greyColor,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
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
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Количество специальностей: ' +
                                      list[index].specialityCount.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.greyColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          )
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
}
