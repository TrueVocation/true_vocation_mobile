import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/news/news_page.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/news/news_template_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class HomeNewsPage extends StatefulWidget {
  const HomeNewsPage({Key? key}) : super(key: key);

  @override
  State<HomeNewsPage> createState() => _HomeNewsPageState();
}

class _HomeNewsPageState extends State<HomeNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        name: "Новости",
        leading: false,
      ),
      backgroundColor: AppColors.transparent,
      body: CustomPageScroll(
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
          const NewsTemplate(
            itemCount: 2,
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
      ),
    );
  }
}
