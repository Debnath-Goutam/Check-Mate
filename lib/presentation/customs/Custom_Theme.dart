import 'package:flutter/material.dart';

ThemeData Custom_Theme() {

  return ThemeData(

      textTheme: Custom_Text_Theme()

  );

}

TextTheme Custom_Text_Theme() {

  return const TextTheme(

    displayLarge: TextStyle(
        fontSize: 28,
        color: Colors.black,
        fontWeight: FontWeight.bold
    ),
    displayMedium: TextStyle(
        fontSize: 24,
        color: Colors.black
    ),
    bodyLarge: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.normal
    ),
    bodyMedium: TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.normal
    ),

  );

}