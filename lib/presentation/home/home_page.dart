import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/authorization/authorization_page.dart';
import 'package:true_vocation_mobile/presentation/speciality/speciality_main_page.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/test/preview.dart';
import 'package:true_vocation_mobile/presentation/university/university_page.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(64),
                  bottomRight: Radius.circular(64)
              ),
              color: AppColors.darkPurple,
            ),
            child: CustomMultiChildLayout(
              delegate: MyMultiChildLayoutDelegate(),
              children: [
                LayoutId(
                    id: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning,',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Ainura Karzhaubayeva',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                LayoutId(
                  id: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AuthorizationPage()),
                        );
                      },
                      child: const Image(
                        image: NetworkImage(
                            'https://mfiles.alphacoders.com/631/631312.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              padding: const EdgeInsets.only(left: 48, right: 48),
              children: getCards(context),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getCards(BuildContext context) {
    return <Widget>[
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PreviewTestPage()),
          );
        },
        child: const CustomContainer(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              'Тест',
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainUniversityPage()),
          );
        },
        child: const CustomContainer(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              'ВУЗы',
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainSpecialityPage()),
          );
        },
        child: const CustomContainer(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              'Специальности',
            ),
          ),
        ),
      ),
      const CustomContainer(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        height: 50,
        width: 50,
        child: Center(
          child: Text(
            'Item 3',
          ),
        ),
      ),
    ];
  }
}

class MyMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) =>
      Size(constraints.biggest.width, 256);

  @override
  void performLayout(Size size) {
    if (hasChild(1) && hasChild(2)) {
      final greetingMaxWidth = size.width;
      final greetingSize = layoutChild(
          1, BoxConstraints.loose(Size(greetingMaxWidth, size.height)));
      final greetingYOffset = size.height / 2 - greetingSize.height / 2;

      layoutChild(2, BoxConstraints.loose(const Size(64, 64)));
      positionChild(1, Offset(24, greetingYOffset));
      positionChild(2, Offset(size.width - 64 - 24, greetingYOffset-8));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return true;
  }
}
