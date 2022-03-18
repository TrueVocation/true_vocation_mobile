import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/news/news_page.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_illustration_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/news/news_template_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
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

  Widget getNothing(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              CustomIllustration(
                preset: AppIllustration.nothingHere,
              ),
              const SizedBox(height: 24,),
              Text(
                'На сегодная новостей нет',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                    color: AppColors.blackColor
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          color: AppColors.blueColor,
          textColor: AppColors.whiteColor,
          child: const Text('Все новости'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainNewsPage()),
            );
          },
        )
      ],
    );
  }

  Widget getTodayNews(count){
    return CustomPageScroll(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 24),
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
        Container(
          margin: const EdgeInsets.only(bottom: 24),
          child: RaisedButton(
            color: AppColors.blueColor,
            textColor: AppColors.whiteColor,
            child: const Text('Все новости'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainNewsPage()),
              );
            },
          ),
        ),
      ],
    );
  }
}
