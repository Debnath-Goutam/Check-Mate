import 'package:chess/presentation/screens/Game_Setup.dart';
import 'package:chess/providers/Game_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget Menu_Card({
  required String label,
  IconData? icon,
  String? timing,
  bool? value,
  required BuildContext context,
  required String route}) {

  final gameProvider = context.read<Game_Provider>();

  return GestureDetector(
    onTap: () async {
      if(value!=null)
        await gameProvider.setVsComputer(value: value);
      if(icon==null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Game_Setup(label: label, timing: timing))
        );
      } else
      Navigator.pushNamed(context, route,);
      //if(label == 'Untimed')
      },
    child: Card(
      elevation: 20,
      child: Center(
        heightFactor: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label),
            icon != null ? Icon(icon): Text(timing!)
          ],
        ),
      ),
    ),
  );

}