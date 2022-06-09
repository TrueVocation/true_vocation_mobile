import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/news_service.dart';
import 'package:true_vocation_mobile/domain/model/news.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/news/news_template_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class MainNewsPage extends StatefulWidget {
  const MainNewsPage({Key? key}) : super(key: key);

  @override
  State<MainNewsPage> createState() => _MainNewsPageState();
}

class _MainNewsPageState extends State<MainNewsPage> {
  late List<News> list = [];
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
    list = (await NewsService().getAllNews(
      page,
      AppConstants.getListSize,
    ))
        .cast<News>();
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
    loading = true;
    _refreshController.refreshCompleted();
    _refreshController.loadComplete();
  }

  void _onLoading() async {
    page++;
    List<News> newList = await NewsService().getAllNews(
      page,
      AppConstants.getListSize,
    );
    list.addAll(newList);
    setState(() {
      _refreshController.loadComplete();
    });
    if (list.isEmpty) {
      setState(() {
        _refreshController.loadNoData();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: "Новости",
        leading: true,
        color: AppColors.backgroundColor,
      ),
      body: loading == true
          ? const Center(child: CircularProgressIndicator())
          : getNews(),
    );
  }

  Widget getNews() {
    return RefreshTemplate(
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: CustomPageScroll(
        children: [
          NewsTemplate(
            news: list,
          ),
        ],
      ),
    );
  }
}
