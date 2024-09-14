import 'package:flutter/material.dart';

Widget Menu_Card(label, icon, context, route) {

  return Expanded(
    child: GestureDetector(
      onTap: (){Navigator.pushNamed(context, route);},
      child: Card(
        elevation: 20,
        child: Center(
          heightFactor: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(label),
              Icon(icon)
            ],
          ),
        ),
      ),
    ),
  );

}