import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/home/navigation.dart';
import 'package:true_vocation_mobile/utils/routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: ApiRoutes.generateRoute,
      title: 'True Vocation',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}
