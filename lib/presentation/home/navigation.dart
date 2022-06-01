import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/home/home_bookmarks_page.dart';
import 'package:true_vocation_mobile/presentation/home/home_news_page.dart';
import 'package:true_vocation_mobile/presentation/home/home_page.dart';
import 'package:true_vocation_mobile/presentation/templates/custom_svg_icon.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomeBookmarksPage(),
    HomeNewsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
            child: bottomNavigationBar(),
            color: AppColors.whiteColor,
          )),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: CustomSvgIcon(
            preset: AppIcons.homeIcon,
            color: _selectedIndex == 0
                ? AppColors.greenColor
                : AppColors.greyColor,
          ),
          label: "Главная",
        ),
        BottomNavigationBarItem(
          icon: CustomSvgIcon(
            preset: AppIcons.bookmarksIcon,
            color: _selectedIndex == 1
                ? AppColors.greenColor
                : AppColors.greyColor,
          ),
          label: "Закладки",
        ),
        BottomNavigationBarItem(
          icon: CustomSvgIcon(
            preset: AppIcons.newsIcon,
            color: _selectedIndex == 2
                ? AppColors.greenColor
                : AppColors.greyColor,
          ),
          label: "Новости",
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: AppColors.greenColor,
      unselectedItemColor: AppColors.greyColor,
      onTap: _onItemTapped,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 24,
    );
  }
}
