import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:true_vocation_mobile/presentation/home/home_news_page.dart';
import 'package:true_vocation_mobile/utils/colors.dart';
import 'package:true_vocation_mobile/utils/icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final Widget svg = SvgPicture.asset(AppIcons.home);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Text(
      'Bookmarks',
    ),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Закладки"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Новости"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.greenColor,
        unselectedItemColor: AppColors.greyColor,
        onTap: _onItemTapped,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 24,
      ),
    );
  }
}
