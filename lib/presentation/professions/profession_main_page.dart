import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/regions.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';
import 'package:true_vocation_mobile/presentation/professions/about_professions_page.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_dialog_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_text_form_field_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';
import 'package:true_vocation_mobile/utils/text_input_masks.dart';

class ProfessionMainPage extends StatefulWidget {
  const ProfessionMainPage({Key? key}) : super(key: key);

  @override
  State<ProfessionMainPage> createState() => _ProfessionMainPage1State();
}

class _ProfessionMainPage1State extends State<ProfessionMainPage> {

  List<Professions> list = [
    Professions('IT Разработчик'),
    Professions('Веб Дизайнер'),
    Professions('Бизнес Аналитик'),
    Professions('Проектный Менеджер'),
    Professions('Тестировщик'),
  ];
  final myController = TextEditingController();

  List<Region> regions = [
    Region('1', 'Алматы'),
    Region('2', 'Нур-Султан'),
    Region('3', 'Шымкент'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: 'Профессии',
        leading: true,
        color: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                CustomTextFormField(
                  child: TextFormField(
                    controller: myController,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    inputFormatters: [TextInputMasks.defaultMask],
                    decoration: InputDecoration(
                        icon: CustomSvgIcon(
                          preset: AppIcons.search,
                          color: AppColors.greyColor,
                        ),
                        labelText: 'Поиск по имени',
                        labelStyle: TextStyle(color: AppColors.greyColor, fontSize: 14),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    title: Text(
                      'Результаты',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'было найдено ' + list.length.toString() + ' совпадений',
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            var _singleNotifier = Provider.of<SingleNotifier>(context);
                            return CustomDialog(
                              child: Column(
                                children: [
                                  ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder: (BuildContext context, int regionIndex) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: regions.map((e) => RadioListTile<Region>(
                                            title: Text(
                                              e.name,
                                              style: TextStyle(
                                                color: AppColors.blackColor,
                                                fontSize: 14,
                                                fontWeight:
                                                FontWeight.normal,
                                              ),
                                            ),
                                            activeColor:
                                            AppColors.blueColor,
                                            value: e,
                                            groupValue: _singleNotifier.currentRegion,
                                            selected: _singleNotifier.currentRegion == e,
                                            onChanged: (value) {
                                              if (value != _singleNotifier.currentRegion) {
                                                _singleNotifier.updateRegion(value!);
                                                Navigator.of(context).pop();
                                              }
                                            })).toList(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: CustomSvgIcon(
                        preset: AppIcons.filter,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          getSpeciality(),
        ],
      ),
    );
  }

  Widget getSpeciality() {
    return Expanded(
      child: CustomPageScroll(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              separatorBuilder: (_, index) => const SizedBox(
                height: 8,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutProfession(
                      profession: list[index],
                    )),
                  );
                },
                child: CustomContainer(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].name,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    fontFamily: 'Roboto'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Трудоустройство:',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'Roboto'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
