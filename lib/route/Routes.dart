import 'package:chess/presentation/screens/Game_Screen.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/Home_Screen.dart';

class Routes {

  Route? onGenerateRoutes(RouteSettings routeSettings) {

    final args = routeSettings.arguments;

    switch(routeSettings.name) {

      case '/home':
        return MaterialPageRoute(builder: (_) => Home_Screen());
      case '/board':
        return MaterialPageRoute(builder: (_) => Game_Screen());
      default:
        return null;
    }

  }

}