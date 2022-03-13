import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/colors.dart';

class MainNewsPage extends StatefulWidget {
  const MainNewsPage({Key? key}) : super(key: key);

  @override
  State<MainNewsPage> createState() => _MainNewsPageState();
}

class _MainNewsPageState extends State<MainNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: Text("Новости"),
        titleTextStyle: TextStyle(color: AppColors.blackColor, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),
        elevation: 0,
        bottomOpacity: 0,
      ),
      backgroundColor: AppColors.transparent,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Card(
          margin: const EdgeInsets.fromLTRB(24, 8, 24, 8),
          color: Colors.white,
          shadowColor: Colors.white38,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              ListTile(
                title: Text('Правительство выделило 20 000 грантов на научно-технические направления', style: TextStyle(fontSize: 14, fontFamily: 'Roboto', color: Colors.black),),
                subtitle: Text('14:34', style: TextStyle(fontSize: 12, fontFamily: 'Roboto', color: Colors.grey),),
              )
            ],
          ),
          ),
        )
      );
  }
}
