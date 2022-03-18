import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/news/news_page.dart';
import 'package:true_vocation_mobile/presentation/templates/appbar_template.dart';
import 'package:true_vocation_mobile/presentation/templates/container_custom_template.dart';
import 'package:true_vocation_mobile/presentation/test/preview.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        name: '',
        leading: false,
        color: AppColors.backgroundColor,
      ),
      body: Center(
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
    );
  }

  List<Widget> getCards(BuildContext context){
    return <Widget>[
      GestureDetector(
        onTap: (){
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
