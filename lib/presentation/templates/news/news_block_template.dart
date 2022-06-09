import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/templates/modal_bottom_sheet_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class NewsBlockTemplate extends StatelessWidget {
  const NewsBlockTemplate({
    Key? key,
    required this.title,
    required this.description,
    required this.picture,
    required this.createdDate,
  }) : super(key: key);

  final String title;
  final String description;
  final String picture;
  final String createdDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          context: context,
          builder: (BuildContext context) {
            return CustomModalBottomSheet(
              children: [
                Icon(
                  Icons.horizontal_rule_rounded,
                  size: 48,
                  color: AppColors.greyColor,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      description,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image(
                image: NetworkImage(
                    picture),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: ListTile(
              title: Text(
                title,
                softWrap: true,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: AppColors.blackColor,
                ),
              ),
              subtitle: Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  createdDate,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
