import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/news/news_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_button.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_illustration_widget.dart';
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
  final int? count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: "Новости",
        leading: false,
        color: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.transparent,
      body: count! > 0 ? getTodayNews(count) : getNothing(),
    );
  }

  Widget getNothing() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: ApiConstants.mainHorizontalPadding),
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
    return CustomPageScroll(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  right: ApiConstants.mainHorizontalPadding),
              child: Text(
                'На сегодня',
                style: TextStyle(color: AppColors.greyColor),
              ),
            ),
          ],
        ),
        NewsTemplate(
          itemCount: count,
        ),
        CustomButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainNewsPage()),
            );
          },
          text: 'Все новости',
          borderColor: AppColors.blueColor,
        ),
      ],
    );
  }
}
