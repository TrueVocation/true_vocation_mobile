import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/presentation/templates/page_with_scroll_template.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class MainUniversityPage extends StatefulWidget {
  const MainUniversityPage({Key? key}) : super(key: key);

  @override
  State<MainUniversityPage> createState() => _MainUniversityPageState();
}

class _MainUniversityPageState extends State<MainUniversityPage> {
  
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
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'Международный университет информационных технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'IITU',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'Международной Университет Информационных Технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'Международный университет информационных технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'IITU',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'Международной Университет Информационных Технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'Международный университет информационных технологий',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
    University(
        'IITU',
        'Международный университет информационных технологий — ведущее высшее учебное заведение в Центрально - Азиатском регионе в области подготовки квалифицированных, международно - признанных IT специалистов.',
        'г. Алматы, ул. Манаса 34/1',
        'код ВУЗа: 190',
        'https://w0.pngwave.com/png/21/482/international-it-university-polytechnic-university-of-turin-tashkent-university-of-information-technologies-university-of-valencia-i-t-logo-png-clip-art.png',
        '900 000',
        false,
        true,
        'акционированный',
        [
          Speciality('Вычеслительная Техника и Программное Обеспечение'),
          Speciality('Информационные Системы'),
          Speciality('Системная Информационная Безопасность'),
        ],
        [
          Picture('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          Picture('https://images.unsplash.com/photo-1606761568499-6d2451b23c66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ]
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        name: 'ВУЗы',
        leading: true,
        color: AppColors.backgroundColor,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: CustomContainer(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                    icon: CustomSvgIcon(
                      preset: AppIcons.search,
                      color: AppColors.greyColor,
                    ),
                    hintText: 'Поиск по имени',
                    hintStyle: TextStyle(color: AppColors.greyColor, fontSize: 14),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none
                  ),
                ),
              ),
            ),
          ),
          getUniversities(),
        ],
      ),
    );
  }

  Widget getUniversities(){
    return Expanded(
      child: CustomPageScroll(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24 ,bottom: 24),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: universities.length,
              separatorBuilder: (_, index) => const SizedBox(
                height: 8,
              ),
              itemBuilder: (context, index) => CustomContainer(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                          child: ClipRRect(
                            child: Image.network(universities[index].logo),
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          )
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              universities[index].name,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: AppColors.blackColor, fontWeight: FontWeight.normal, fontSize: 14, fontFamily: 'Roboto'),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Количество специальностей: ' + universities[index].specialities.length.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColors.greyColor, fontWeight: FontWeight.normal, fontSize: 12, fontFamily: 'Roboto'),
                            )
                          ],
                        ),
                      )
                    ],
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
