import 'package:chess/presentation/customs/App_Bar.dart';
import 'package:chess/presentation/customs/Menu_Card.dart';
import 'package:flutter/material.dart';

class Game_Time extends StatelessWidget {
  const Game_Time({super.key});

  @override
  Widget build(BuildContext context) {

    List <String> gameTime = [

      'Standard 90+30',
      'Rapid 25+10',
      'Rapid 15+10',
      'Blitz 5+3',
      'Blitz 3+2',
      'Bullet 2+1'

    ];

    return Scaffold(

      appBar: App_Bar('Game Time'),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: gameTime.length,
        itemBuilder: (context, index) {
          return Menu_Card(
              label: gameTime[index].split(' ')[0],
              context: context,
              timing: gameTime[index].split(' ')[1],
              route: '/board');
        },
      ),

    );
  }
}
