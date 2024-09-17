import 'package:chess/presentation/customs/App_Bar.dart';
import 'package:flutter/material.dart';

class Game_Setup extends StatelessWidget {

  final String label;
  final String? timing;

  const Game_Setup({super.key, required this.label, required this.timing});

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: App_Bar('Game Setup'),

      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text('Game Type: $label', style: Theme.of(context).textTheme.displayLarge,),
            SizedBox(height: 20,),

            if(timing?.isNotEmpty ?? false)
              ...[
                Text('Clock Setting: $timing', style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium,),

                SizedBox(height: 20,),
              ],

            ElevatedButton(
                onPressed: (){},
                child: Text('Play as White')
            ),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: (){},
                child: Text('Play as Black')
            ),

            SizedBox(height: 20,),

            ElevatedButton(
                onPressed: (){},
                child: Text('Start')
            )

          ],

        ),

      ),

    );
  }
}
