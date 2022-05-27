import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/university_service.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/functions.dart';

class HomeBookmarksPage extends StatefulWidget {
  const HomeBookmarksPage({Key? key}) : super(key: key);

  @override
  State<HomeBookmarksPage> createState() => _HomeBookmarksPageState();
}

class _HomeBookmarksPageState extends State<HomeBookmarksPage> {
  late List<University> listUni = [];

  bool loadingUni = true;
  bool loadingSpec = true;
  bool loadingProf = true;
  int pageUni = 0;
  int pageSpec = 0;
  int pageProf = 0;

  final RefreshController _refreshControllerUni = RefreshController(initialRefresh: false);
  final RefreshController _refreshControllerSpec = RefreshController(initialRefresh: false);
  final RefreshController _refreshControllerProf = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _getDataUni();
  }

  void _getDataUni() async {
    listUni = (await UniversityService().getUniversities(pageUni, ApiConstants.getListSize))
        .cast<University>();
    Future.delayed(const Duration(seconds: 1)).then(
          (value) => setState(
            () {
          loadingUni = false;
        },
      ),
    );
  }

  void _onRefreshUni() async {
    pageUni = 0;
    _getDataUni();
    _refreshControllerUni.refreshCompleted();
    _refreshControllerUni.loadComplete();
  }

  void _onLoadingUni() async {
    pageUni++;
    List<University> newList = await UniversityService()
        .getUniversities(pageUni, ApiConstants.getListSize);
    listUni.addAll(newList);
    if (newList.isEmpty) {
      setState(() {
        _refreshControllerUni.loadNoData();
      });
    } else {
      setState(() {
        _refreshControllerUni.loadComplete();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: false,
        color: AppColors.whiteColor,
        name: 'Закладки',
      ),
      backgroundColor: AppColors.whiteColor,
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              unselectedLabelColor: AppColors.greyColor,
              labelColor: AppColors.purple,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppColors.blueColor,
              isScrollable: true,
              tabs: const [
                CustomTabs(name: 'Вузы'),
                CustomTabs(name: 'Специальности'),
                CustomTabs(name: 'Професии'),
                CustomTabs(name: 'Новости'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  RefreshTemplate(
                    controller: _refreshControllerUni,
                    onRefresh: _onRefreshUni,
                    onLoading: _onLoadingUni,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: ApiConstants.mainHorizontalPadding, vertical: 16),
                          child: loadingUni == true
                              ? const Center(
                            child: CircularProgressIndicator(),
                          )
                              : ApiFunctions.getUni(listUni),
                        ),
                      ],
                    ),
                  ),
                  RefreshTemplate(
                    controller: _refreshControllerSpec,
                    onRefresh: _onRefreshUni,
                    onLoading: _onLoadingUni,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: ApiConstants.mainHorizontalPadding, vertical: 16),
                          child: loadingSpec == true
                              ? const Center(
                            child: CircularProgressIndicator(),
                          )
                              : ApiFunctions.getUni(listUni),
                        ),
                      ],
                    ),
                  ),
                  RefreshTemplate(
                    controller: _refreshControllerProf,
                    onRefresh: _onRefreshUni,
                    onLoading: _onLoadingUni,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: ApiConstants.mainHorizontalPadding, vertical: 16),
                          child: loadingProf == true
                              ? const Center(
                            child: CircularProgressIndicator(),
                          )
                              : ApiFunctions.getUni(listUni),
                        ),
                      ],
                    ),
                  ),
                  RefreshTemplate(
                    controller: _refreshControllerSpec,
                    onRefresh: _onRefreshUni,
                    onLoading: _onLoadingUni,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: ApiConstants.mainHorizontalPadding, vertical: 16),
                          child: loadingSpec == true
                              ? const Center(
                            child: CircularProgressIndicator(),
                          )
                              : ApiFunctions.getUni(listUni),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
