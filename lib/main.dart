import 'package:chess/presentation/customs/Custom_Theme.dart';
import 'package:chess/presentation/screens/Home_Screen.dart';
import 'package:chess/providers/Game_Provider.dart';
import 'package:chess/route/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(MultiProvider(

    providers: [ChangeNotifierProvider(create: (_) => Game_Provider())],
    child: MyApp(),

  ));

}

class MyApp extends StatelessWidget {

  Routes routes = Routes();


  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        onGenerateRoute: routes.onGenerateRoutes,
        title: 'Chess',
        theme: Custom_Theme(),
        home: Home_Screen(),
    );
  }
}
