import 'package:flutter/material.dart';
import 'package:weather_app/pages/details.dart';
import 'package:weather_app/pages/main_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String secondPage = '/secondPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );
      case secondPage:
        return MaterialPageRoute(
          builder: (context) => DetailsPage(),
        );
      default:
        throw FormatException('Error: Route Not Found!');
    }
  }
}
