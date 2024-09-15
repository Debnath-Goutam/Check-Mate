import 'package:chess/costants/Text_Const.dart';
import 'package:chess/presentation/customs/App_Bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rule_Page extends StatelessWidget {
  Rule_Page({super.key});

  final textConst = Text_Const();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: App_Bar('Rules'),

      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text('History:', style: Theme.of(context).textTheme.displayLarge,),
              const SizedBox(height: 10,),
              Text(textConst.hist),
              const SizedBox(height: 10,),

              Text('Objective:', style: Theme.of(context).textTheme.displayLarge,),
              const SizedBox(height: 10,),
              Text(textConst.obj),
              const SizedBox(height: 10,),

              Text('Board Description:', style: Theme.of(context).textTheme.displayLarge,),
              const SizedBox(height: 10,),
              Center(child: Image.asset('assets/board.jpg', height: 300,width: 300,)),
              const SizedBox(height: 10,),
              Text(textConst.boardDesc),
              const SizedBox(height: 10,),

              Text('Pieces and their Moves:', style: Theme.of(context).textTheme.displayLarge,),
              const SizedBox(height: 10,),

              RichText(
                text: TextSpan(
                  children: textConst.pieceMap.entries.map((entry) {
                    final desc = entry.key;
                    final images = entry.value;
                    return WidgetSpan(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            desc.split(':')[0],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            '${desc.split(':')[1]}\n',
                            style: const TextStyle(color: Colors.black),
                          ),
                          Row(
                            children: [
                              ...images.map((imagePath) =>
                                  Expanded(
                                    child: Image.asset(
                                      imagePath,
                                      width: 100,
                                      height: 100,
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 10,),

                          Image.asset(textConst.moves[index++]),

                          const SizedBox(height: 10,)

                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 10,),

              Text('Special Moves:', style: Theme.of(context).textTheme.displayLarge,),

              const SizedBox(height: 10,),

              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '1. Castling\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text: 'Castling is a unique move involving the king and one of the rooks. It is the only move that allows you to move two pieces at once. There are two types of castling: kingside (short) and queenside (long).\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Kingside Castling: ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextSpan(
                      text: 'The king moves two squares towards the rook on the kingside, and the rook moves to the square next to the king.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Queenside Castling: ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextSpan(
                      text: 'The king moves two squares towards the rook on the queenside, and the rook moves to the square next to the king.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Conditions for Castling:\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextSpan(
                      text: '- Neither the king nor the rook involved has moved before.\n- There are no pieces between the king and the rook.\n- The king is not in check, and the squares the king moves across are not under attack.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ]
                )
              ),

              const SizedBox(height: 10,),
              Image.asset('assets/castling.gif'),
              const SizedBox(height: 10,),

              const Text.rich(
                  TextSpan(
                      children: [
                    TextSpan(
                      text: '2. En Passant\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, decoration: TextDecoration.underline),
                    ),

                    TextSpan(
                      text: 'En passant is a special pawn capture that can occur when a pawn moves two squares forward from its starting position and lands beside an opponent\'s pawn.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'The opponent\'s pawn can capture the moving pawn "in passing" as if it had only moved one square forward. This capture must be made immediately after the two-square move, or the right to capture en passant is lost.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ]
                )
              ),

              const SizedBox(height: 10,),
              Image.asset('assets/en_passant.gif'),
              const SizedBox(height: 10,),

              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '3. Pawn Promotion\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text: 'When a pawn reaches the opposite side of the board (the eighth rank for white, the first rank for black), it must be promoted to another piece.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'The pawn can be promoted to a queen, rook, bishop, or knight. Most players choose to promote to a queen because it is the most powerful piece. The promotion is immediate and does not require the pawn to wait for the next turn.\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10,),
              Image.asset('assets/pawn_promotion.gif'),

            ],

          ),
        ),

      )

    );
  }
}
