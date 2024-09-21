import 'package:flutter/material.dart';

Widget Custom_Buttons({
  required String label,
  required context,
  required onPressed
}) {

  MediaQueryData queryData = MediaQuery.of(context);
  final deviceSize = queryData.size;

  return ElevatedButton(

    onPressed: onPressed,

    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
      elevation: WidgetStateProperty.all(10),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

    ),

    child: Container(

      height: 50,
      width: deviceSize.width/2,
      alignment: AlignmentDirectional.center,

      child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(label, style: Theme.of(context).textTheme.displayMedium,)
      ),

    )
    ,

  );

}