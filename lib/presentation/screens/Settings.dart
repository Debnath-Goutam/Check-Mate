import 'package:chess/presentation/customs/App_Bar.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: App_Bar('Settings'),

      body: Center(),

    );
  }
}
