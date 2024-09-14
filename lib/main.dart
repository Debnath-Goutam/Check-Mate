import 'package:chess/presentation/customs/Custom_Theme.dart';
import 'package:chess/presentation/screens/Home_Screen.dart';
import 'package:chess/route/Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){

  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();


  runApp(MyApp());

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
