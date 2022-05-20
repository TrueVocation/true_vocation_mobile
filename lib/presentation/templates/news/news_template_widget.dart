import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/news/news_block_template.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class NewsTemplate extends StatelessWidget {
  const NewsTemplate({Key? key, this.itemCount}) : super(key: key);

  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.only(
          left: ApiConstants.mainHorizontalPadding,
          right: ApiConstants.mainHorizontalPadding,
          top: 8,
          bottom: 24),
      separatorBuilder: (_, index) => const SizedBox(
        height: 16,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount!,
      itemBuilder: (context, index) => const CustomContainer(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: NewsBlockTemplate(),
      ),
    );
  }
}
