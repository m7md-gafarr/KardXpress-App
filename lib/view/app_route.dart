import 'package:flutter/material.dart';
import 'package:kardxpress_app/constant/constant.dart';

import 'package:kardxpress_app/view/screen/home_screen.dart';
import 'package:kardxpress_app/view/screen/intro_screen.dart';

class AppRouter {
  Route generate_route(RouteSettings settings) {
    switch (settings.name) {
      case IntroScreen:
        return MaterialPageRoute(builder: (context) => Intro_Screen());
      case HomeScreen:
        return MaterialPageRoute(builder: (context) => const Home_Screen());

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Not Found This Screen"),
            ),
          ),
        );
    }
  }
}
