import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/favorite_service.dart';
import 'package:true_vocation_mobile/data/api/service/university_service.dart';
import 'package:true_vocation_mobile/domain/model/news.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/functions.dart';
import 'package:true_vocation_mobile/utils/routes.dart';

class HomeBookmarksPage extends StatefulWidget {
  const HomeBookmarksPage({Key? key}) : super(key: key);

  @override
  State<HomeBookmarksPage> createState() => _HomeBookmarksPageState();
}

class _HomeBookmarksPageState extends State<HomeBookmarksPage> {
  late List<University> listUni = [];
  late List<Speciality> listSpec = [];
  late List<Professions> listProf = [];
  late List<News> listNews = [];

  bool loadingUni = true;
  bool loadingSpec = true;
  bool loadingProf = true;
  bool loadingNews = true;
  int pageUni = 0;
  int pageSpec = 0;
  int pageProf = 0;
  int pageNews = 0;

  final RefreshController _refreshControllerUni =
      RefreshController(initialRefresh: false);
  final RefreshController _refreshControllerSpec =
      RefreshController(initialRefresh: false);
  final RefreshController _refreshControllerProf =
      RefreshController(initialRefresh: false);
  final RefreshController _refreshControllerNews =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _getDataUni();
    _getDataProf();
    _getDataSpec();
    _getDataNews();
  }

  void _getDataUni() async {
    var res = (await FavoriteService()
            .getFavoriteUniversities(pageUni, AppConstants.getListSize, AppConstants.currentUser.id));
    listUni = (res.body as List).map((e) => University.fromJson(e)).toList();
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
    var res = await FavoriteService()
        .getFavoriteUniversities(pageUni, AppConstants.getListSize, AppConstants.currentUser.id);
    listUni.addAll((res.body as List).map((e) => University.fromJson(e)).toList());
    if (res.body.isEmpty) {
      setState(() {
        _refreshControllerUni.loadNoData();
      });
    } else {
      setState(() {
        _refreshControllerUni.loadComplete();
      });
    }
  }

  void _getDataSpec() async {
    var res = (await FavoriteService()
            .getFavoriteSpecialities(pageSpec, AppConstants.getListSize, AppConstants.currentUser.id));
    listSpec = (res.body as List).map((e) => Speciality.fromJson(e)).toList();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loadingSpec = false;
        },
      ),
    );
  }
  void _onRefreshSpec() async {
    pageSpec = 0;
    _getDataSpec();
    _refreshControllerSpec.refreshCompleted();
    _refreshControllerSpec.loadComplete();
  }
  void _onLoadingSpec() async {
    pageSpec++;
    var res = await FavoriteService()
        .getFavoriteSpecialities(pageSpec, AppConstants.getListSize, AppConstants.currentUser.id);
    listSpec.addAll((res.body as List).map((e) => Speciality.fromJson(e)).toList());
    if (res.body.isEmpty) {
      setState(() {
        _refreshControllerSpec.loadNoData();
      });
    } else {
      setState(() {
        _refreshControllerSpec.loadComplete();
      });
    }
  }

  void _getDataProf() async {
    var res = (await FavoriteService()
            .getFavoriteProfessions(pageProf, AppConstants.getListSize, AppConstants.currentUser.id));
    listProf = (res.body as List).map((e) => Professions.fromJson(e)).toList();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loadingProf = false;
        },
      ),
    );
  }
  void _onRefreshProf() async {
    pageProf = 0;
    _getDataProf();
    _refreshControllerProf.refreshCompleted();
    _refreshControllerProf.loadComplete();
  }
  void _onLoadingProf() async {
    pageProf++;
    var res = await FavoriteService()
        .getFavoriteProfessions(pageProf, AppConstants.getListSize, AppConstants.currentUser.id);
    listProf.addAll((res.body as List).map((e) => Professions.fromJson(e)).toList());
    if (res.body.isEmpty) {
      setState(() {
        _refreshControllerProf.loadNoData();
      });
    } else {
      setState(() {
        _refreshControllerProf.loadComplete();
      });
    }
  }

  void _getDataNews() async {
    var res = (await FavoriteService()
            .getFavoriteNews(pageNews, AppConstants.getListSize, AppConstants.currentUser.id));
    listNews = (res.body as List).map((e) => News.fromJson(e)).toList();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          loadingNews = false;
        },
      ),
    );
  }
  void _onRefreshNews() async {
    pageNews = 0;
    _getDataNews();
    _refreshControllerNews.refreshCompleted();
    _refreshControllerNews.loadComplete();
  }
  void _onLoadingNews() async {
    pageNews++;
    var res = await FavoriteService()
        .getFavoriteNews(pageProf, AppConstants.getListSize, AppConstants.currentUser.id);
    listNews.addAll((res.body as List).map((e) => News.fromJson(e)).toList());
    if (res.body.isEmpty) {
      setState(() {
        _refreshControllerNews.loadNoData();
      });
    } else {
      setState(() {
        _refreshControllerNews.loadComplete();
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
      body: AppConstants.currentUser.id != null ? DefaultTabController(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppConstants.mainHorizontalPadding,
                              vertical: 16),
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
                    onRefresh: _onRefreshSpec,
                    onLoading: _onLoadingSpec,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppConstants.mainHorizontalPadding,
                              vertical: 16),
                          child: loadingSpec == true
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : ApiFunctions.getSpec(listSpec),
                        ),
                      ],
                    ),
                  ),
                  RefreshTemplate(
                    controller: _refreshControllerProf,
                    onRefresh: _onRefreshProf,
                    onLoading: _onLoadingProf,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppConstants.mainHorizontalPadding,
                              vertical: 16),
                          child: loadingProf == true
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : ApiFunctions.getProf(listProf),
                        ),
                      ],
                    ),
                  ),
                  RefreshTemplate(
                    controller: _refreshControllerNews,
                    onRefresh: _onRefreshNews,
                    onLoading: _onLoadingNews,
                    child: CustomPageScroll(
                      color: AppColors.whiteColor,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppConstants.mainHorizontalPadding,
                              vertical: 16),
                          child: loadingNews == true
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
      ) : Center(
        child: CustomButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true)
                .pushReplacementNamed(AppRoutes.loginPage);
          },
          width: 156,
          loading: false,
          radius: 10,
          color: AppColors.blueColor,
          borderColor: AppColors.blueColor,
          text: 'Авторизуйтесь',
        ),
      ),
    );
  }
}
