import 'dart:math';
import 'package:bishop/bishop.dart' as bishop;
import 'package:chess/presentation/customs/App_Bar.dart';
import 'package:square_bishop/square_bishop.dart';
import 'package:flutter/material.dart';
import 'package:squares/squares.dart';

class Game_Screen extends StatefulWidget {
  const Game_Screen({Key? key}) : super(key: key);
  @override
  State<Game_Screen> createState() => _Game_ScreenState();
}

class _Game_ScreenState extends State<Game_Screen> {
  late bishop.Game game;
  late SquaresState state;
  int player = Squares.white;
  bool aiThinking = false;
  bool flipBoard = false;

  @override
  void initState() {
    _resetGame(false);
    super.initState();
  }

  void _resetGame([bool ss = true]) {
    game = bishop.Game(variant: bishop.Variant.standard());
    state = game.squaresState(player);
    if (ss) setState(() {});
  }

  void _flipBoard() => setState(() => flipBoard = !flipBoard);

  void _onMove(Move move) async {
    bool result = game.makeSquaresMove(move);
    if (result) {
      setState(() => state = game.squaresState(player));
    }
    if (state.state == PlayState.theirTurn && !aiThinking) {
      setState(() => aiThinking = true);
      await Future.delayed(
          Duration(milliseconds: Random().nextInt(4750) + 250));
      game.makeRandomMove();
      setState(() {
        aiThinking = false;
        state = game.squaresState(player);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar('Board_Screen'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const ListTile(

              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('John Doe'),
              subtitle: Text('Rating: xxxx'),
              trailing: Text('00:05:00'),

            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: BoardController(
                state: flipBoard ? state.board.flipped() : state.board,
                playState: state.state,
                pieceSet: PieceSet.merida(),
                theme: BoardTheme.brown,
                moves: state.moves,
                onMove: _onMove,
                onPremove: _onMove,
                markerTheme: MarkerTheme(
                  empty: MarkerTheme.dot,
                  piece: MarkerTheme.corners(),
                ),
                promotionBehaviour: PromotionBehaviour.autoPremove,
              ),
            ),
            const SizedBox(height: 20),

            const ListTile(

              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Jane Doe'),
              subtitle: Text('Rating: yyyy'),
              trailing: Text('00:05:00'),

            ),

            const SizedBox(height: 20),

            OutlinedButton(
              onPressed: _resetGame,
              child: const Text('New Game'),
            ),

            IconButton(
              onPressed: _flipBoard,
              icon: const Icon(Icons.rotate_left),
            ),
          ],
        ),
      ),
    );
  }
}