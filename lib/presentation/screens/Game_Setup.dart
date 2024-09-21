import 'package:chess/costants/Text_Const.dart';
import 'package:chess/presentation/customs/App_Bar.dart';
import 'package:chess/presentation/customs/Cumtom_Buttons.dart';
import 'package:chess/providers/Game_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Game_Setup extends StatefulWidget {

  final String label;
  final String? timing;

  const Game_Setup({super.key, required this.label, required this.timing});

  @override
  State<Game_Setup> createState() => _Game_SetupState();
}

class _Game_SetupState extends State<Game_Setup> {

  Game_Difficulty difficultyGroupValue = Game_Difficulty.Easy;

  @override
  Widget build(BuildContext context) {

    final game_provider = context.read<Game_Provider>();

    return Scaffold(

      appBar: App_Bar('Game Setup'),

      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text('Game Type: ${widget.label}', style: Theme.of(context).textTheme.displayLarge,),
            SizedBox(height: 20,),

            if(widget.timing?.isNotEmpty ?? false)
              ...[
                Text('Clock Setting: ${widget.timing}', style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium,),

                SizedBox(height: 20,),
              ],

            SizedBox(height: 40,),

            Custom_Buttons(
                label: 'Play as White',
                context: context,
                onPressed: (){}
            ),

            SizedBox(height: 20,),

            Custom_Buttons(
                label: 'Play as Black',
                context: context,
                onPressed: (){}
            ),

            SizedBox(height: 50,),

            game_provider.vsComputer
            ? Column(
                children: [

                  Text('Game Difficulty', style: Theme.of(context).textTheme.displayLarge,),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [

                        Expanded(
                          child: Card(
                            color: Colors.grey[300],
                            child: RadioListTile(
                              value: Game_Difficulty.Easy,
                              groupValue: difficultyGroupValue,
                              onChanged: (value) {
                                setState(() {
                                  difficultyGroupValue = value!;
                                });
                              },
                              title: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(Game_Difficulty.Easy.name,)
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Card(
                            color: Colors.grey[300],
                            child: Container(
                                height: 50,
                                child: RadioListTile(
                                  value: Game_Difficulty.Medium,
                                  groupValue: difficultyGroupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      difficultyGroupValue = value!;
                                    });
                                  },
                                  title: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(Game_Difficulty.Medium.name)
                                  ),
                                )
                            ),
                          ),
                        ),

                        Expanded(
                          child: Card(
                            color: Colors.grey[300],
                            child: Container(
                                height: 50,
                                child: RadioListTile(
                                  value: Game_Difficulty.Hard,
                                  groupValue: difficultyGroupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      difficultyGroupValue = value!;
                                    });
                                  },
                                  title: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(Game_Difficulty.Hard.name)
                                  ),
                                )
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                ]
            )

            : Text(''),

            Custom_Buttons(
                label: 'Start',
                context: context,
                onPressed: (){
                  playGame(gameProvider: game_provider);
                }
            ),

          ],

        ),

      ),

    );
  }

  void playGame({required gameProvider}) {

    gameProvider.setIsLoading(value: true);
    Navigator.pushNamed(context, '/board');

  }

}