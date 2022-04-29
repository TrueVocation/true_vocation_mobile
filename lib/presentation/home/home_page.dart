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
              delegate: AppBarMultiChildLayoutDelegate(),
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
          Container(
            color: AppColors.transparent,
            child: CustomMultiChildLayout(
              delegate: BodyMultiChildLayoutDelegate(),
              children: [
                LayoutId(
                  id: 1,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    mainAxisSpacing: 16,
                    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 24),
                    children: getCards(context),
                  ),
                ),
                LayoutId(
                  id: 2,
                  child: CustomContainer(
                    margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
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
        child: Container(
          child: CustomContainer(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Column(
              children: const [
                Text(
                  'Тест',
                ),
              ],
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
          child: Center(
            child: Text(
              'Специальности',
            ),
          ),
        ),
      ),
      const CustomContainer(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Center(
          child: Text(
            'Item 3',
          ),
        ),
      ),
    ];
  }
}

class AppBarMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) =>
      Size(constraints.biggest.width, 256);

  @override
  void performLayout(Size size) {
    if (hasChild(1) && hasChild(2)) {
      final greetingMaxWidth = size.width;
      final greetingSize = layoutChild(
          1, BoxConstraints.loose(Size(greetingMaxWidth, size.height)));
      final greetingYOffset = size.height / 2 - greetingSize.height;

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

class BodyMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) =>
      Size(constraints.biggest.width, 224);

  @override
  void performLayout(Size size) {
    if (hasChild(1) && hasChild(2)) {
      final cardsMaxWidth = size.width;
      final cardsSize = layoutChild(
          1, BoxConstraints.loose(Size(cardsMaxWidth, size.height)));
      final cardsYOffset = size.height / 2 - cardsSize.height;
      positionChild(1, Offset(0, cardsYOffset));

      final textMaxWidth = size.width;
      final textSize = layoutChild(
          2, BoxConstraints.loose(Size(textMaxWidth, size.height)));
      final textYOffset = cardsYOffset + textSize.height - 24;
      positionChild(2, Offset(0, textYOffset));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return true;
  }
}
