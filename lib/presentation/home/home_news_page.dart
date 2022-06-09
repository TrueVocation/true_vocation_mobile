import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/data/api/service/news_service.dart';
import 'package:true_vocation_mobile/domain/model/news.dart';
import 'package:true_vocation_mobile/presentation/news/news_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_illustration_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_refresh_template.dart';
import 'package:true_vocation_mobile/presentation/templates/news/news_template_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/constants.dart';
import 'package:true_vocation_mobile/utils/illustrations.dart';

class HomeNewsPage extends StatefulWidget {
  const HomeNewsPage({Key? key}) : super(key: key);

  @override
  State<HomeNewsPage> createState() => _HomeNewsPageState();
}

class _HomeNewsPageState extends State<HomeNewsPage> {
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
    list = (await NewsService().getTodayNews(
      page,
      AppConstants.getListSize,
    ));
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
    list = await NewsService().getTodayNews(
      page,
      AppConstants.getListSize,
    );
    if (list.isEmpty) {
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
    return Scaffold(
      appBar: CustomAppBar(
        name: "Новости",
        leading: false,
        color: AppColors.whiteColor,
      ),
      backgroundColor: AppColors.whiteColor,
      body: list.isNotEmpty ? getTodayNews(list) : getNothing(),
    );
  }

  Widget getNothing() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.mainHorizontalPadding),
          child: Column(
            children: [
              CustomIllustration(
                preset: AppIllustration.nothingHere,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'На сегодная новостей нет',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                    color: AppColors.blackColor),
              ),
            ],
          ),
        ),
        CustomButton(
          borderColor: AppColors.blueColor,
          loading: false,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainNewsPage()),
            );
          },
          radius: 10,
          text: 'Все новости',
          color: AppColors.blueColor,
          width: 156,
        ),
      ],
    );
  }

  Widget getTodayNews(count) {
    return RefreshTemplate(
      controller: _refreshController,
      onLoading: _onLoading,
      onRefresh: _onRefresh,
      child: loading == false
          ? CustomPageScroll(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          right: AppConstants.mainHorizontalPadding),
                      child: Text(
                        'На сегодня',
                        style: TextStyle(color: AppColors.greyColor),
                      ),
                    ),
                  ],
                ),
                NewsTemplate(
                  news: list,
                ),
                CustomButton(
                  loading: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainNewsPage()),
                    );
                  },
                  text: 'Все новости',
                  borderColor: AppColors.blueColor,
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
