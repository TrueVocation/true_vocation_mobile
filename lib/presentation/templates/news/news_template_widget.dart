import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/news.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/news/news_block_template.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class NewsTemplate extends StatelessWidget {
  const NewsTemplate({Key? key, this.news}) : super(key: key);

  final List<News>? news;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.only(
          left: AppConstants.mainHorizontalPadding,
          right: AppConstants.mainHorizontalPadding,
          top: 8,
          bottom: 24),
      separatorBuilder: (_, index) => const SizedBox(
        height: 16,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: news!.length,
      itemBuilder: (context, index) => CustomContainer(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: NewsBlockTemplate(
          title: news![index].title!,
          description: news![index].description!,
          picture: news![index].picture!,
          createdDate: news![index].createdDate!,
        ),
      ),
    );
  }
}
