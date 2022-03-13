import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/news/main_news_page.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Text(
      'Bookmarks',
    ),
    MainNewsPage(),
  ];

  void _onItemTapped (int index){
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
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: AppColors.whiteColor, spreadRadius: 0, blurRadius: 0),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
                BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Закладки"),
                BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Новости"),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: AppColors.greenColor,
              unselectedItemColor: AppColors.grayColor,
              onTap: _onItemTapped,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              iconSize: 24,
            ),
          )
      ),
    );
  }
}
