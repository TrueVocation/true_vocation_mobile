import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/professions.dart';
import 'package:true_vocation_mobile/domain/model/speciality.dart';
import 'package:true_vocation_mobile/domain/model/subjects.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/professions/about_professions_page.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_tabs_widget.dart';
import 'package:true_vocation_mobile/presentation/templates/detail_page_template.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/presentation/university/about_university.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class AboutSpeciality extends StatefulWidget {
  const AboutSpeciality({Key? key, this.speciality}) : super(key: key);

  final Speciality? speciality;

  @override
  State<AboutSpeciality> createState() => _AboutSpecialityState();
}

class _AboutSpecialityState extends State<AboutSpeciality> {
  List<Subject> list = [
    Subject('1', 'Математика'),
    Subject('2', 'Физика'),
  ];

  List<University> universities = [
    University(
        'Международной Университет Информационных Технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'Международный университет информационных технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'IITU',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'Международной Университет Информационных Технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'Международный университет информационных технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'IITU',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'Международной Университет Информационных Технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'Международный университет информационных технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://cdn-icons-png.flaticon.com/512/2231/2231696.png',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
    University(
        'IITU',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный', [
      Speciality('Вычеслительная Техника и Программное Обеспечение', '', ''),
      Speciality('Информационные Системы', '', ''),
      Speciality('Системная Информационная Безопасность', '', ''),
    ], [
      Picture(
          'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      Picture(
          'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ]),
  ];

  List<Professions> listProf = [
    Professions('Software Developer'),
    Professions('UI/UX designer'),
    Professions('Data Analyst'),
    Professions('Quality Assurance'),
  ];

  @override
  Widget build(BuildContext context) {
    return DetailPageTemplate(
      objectName: widget.speciality!.name,
      objectNameShort: widget.speciality!.name,
      appBarName: 'О специальности',
      appBarBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Трудоустройства:',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Roboto'),
          ),
          CustomContainer(
            color: getColor(widget.speciality!.employment).withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                widget.speciality!.employment,
                style: TextStyle(
                    color: AppColors.whiteColor, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
      iconPreset: AppIcons.spec,
      tabLength: 3,
      tabs: const [
        CustomTabs(name: 'Подробнее'),
        CustomTabs(name: 'Вузы'),
        CustomTabs(name: 'Профессии'),
      ],
      tabBarView: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: CustomPageScroll(
            color: AppColors.whiteColor,
            children: const [
              Text(
                  'gbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjgbyjnjv'),
            ],
          ),
        ),
        CustomPageScroll(
          color: AppColors.whiteColor,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: getUni(),
            ),
          ],
        ),
        CustomPageScroll(
          color: AppColors.whiteColor,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: getProf(),
            ),
          ],
        ),
      ],
    );
  }

  Widget getUni() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: universities.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainer(
        shadowColor: AppColors.purple.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 256,
                    child: Text(
                      universities[index].name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    universities[index].address,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  )
                ],
              ),
              IconButton(
                icon: CustomSvgIcon(
                  preset: AppIcons.arrowCircle,
                  color: AppColors.purple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutUniversity(
                              university: universities[index],
                            )),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getProf() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listProf.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) => CustomContainer(
        shadowColor: AppColors.purple.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 256,
                child: Text(
                  listProf[index].name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontFamily: 'Roboto'),
                ),
              ),
              IconButton(
                icon: CustomSvgIcon(
                  preset: AppIcons.arrowCircle,
                  color: AppColors.purple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutProfession(
                        profession: listProf[index],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Color getColor(String value) {
    switch (value) {
      case 'Низкое':
        return AppColors.redColor;
      case 'Среднее':
        return AppColors.yellowColor;
      default:
        return AppColors.greenColor;
    }
  }
}
