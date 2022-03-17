import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/news/news_template_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class MainNewsPage extends StatefulWidget {
  const MainNewsPage({Key? key}) : super(key: key);

  @override
  State<MainNewsPage> createState() => _MainNewsPageState();
}

class _MainNewsPageState extends State<MainNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: "Новости",
        leading: true,
        color: AppColors.backgroundColor,
      ),
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
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
