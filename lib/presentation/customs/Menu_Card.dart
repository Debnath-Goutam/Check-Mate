import 'package:flutter/material.dart';

Widget Menu_Card({
  required String label,
  IconData? icon,
  String? timing,
  required BuildContext context,
  required String route}) {

  return GestureDetector(
    onTap: (){Navigator.pushNamed(context, route);},
    child: Card(
      elevation: 20,
      child: Center(
        heightFactor: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label),
            icon != null ? Icon(icon!): Text(timing!)
          ],
        ),
      ),
    ),
  );

}