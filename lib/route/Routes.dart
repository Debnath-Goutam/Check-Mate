import 'package:chess/presentation/screens/Game_Screen.dart';
import 'package:chess/presentation/screens/Game_Setup.dart';
import 'package:chess/presentation/screens/Game_Time.dart';
import 'package:chess/presentation/screens/Settings.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/Home_Screen.dart';
import '../presentation/screens/Rule_Page.dart';

class Routes {

  Route? onGenerateRoutes(RouteSettings routeSettings) {

    switch(routeSettings.name) {

      case '/home':
        return MaterialPageRoute(builder: (_) => Home_Screen());
      case '/board':
        return MaterialPageRoute(builder: (_) => Game_Screen());
      case '/rules':
        return MaterialPageRoute(builder: (_) => Rule_Page());
      case '/game_time':
        return MaterialPageRoute(builder: (_) => Game_Time());
      case '/settings':
        return MaterialPageRoute(builder: (_) => Settings());
      default:
        return null;
    }

  }

}