import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/presentation/authorization/authorization_page.dart';
import 'package:true_vocation_mobile/presentation/home/home_page.dart';
import 'package:true_vocation_mobile/presentation/professions/profession_main_page.dart';
import 'package:true_vocation_mobile/presentation/speciality/speciality_main_page.dart';
import 'package:true_vocation_mobile/presentation/test/preview.dart';
import 'package:true_vocation_mobile/presentation/university/university_main_page.dart';

class ApiRoutes {
  static const String mainPage = '/main';
  static const String loginPage = '/login';
  static const String universityPage = '/university';
  static const String specialityPage = '/speciality';
  static const String professionPage = '/profession';
  static const String testPage = '/test';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainPage:
        return MaterialPageRoute(builder: (context) => const HomePage());

      case loginPage:
        return MaterialPageRoute(builder: (context) => const AuthorizationPage());

      case universityPage:
        return MaterialPageRoute(builder: (context) => const MainUniversityPage());

      case specialityPage:
        return MaterialPageRoute(builder: (context) => const MainSpecialityPage());

      case professionPage:
        return MaterialPageRoute(builder: (context) => const MainProfessionPage());

      case testPage:
        return MaterialPageRoute(builder: (context) => const PreviewTestPage());

      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
