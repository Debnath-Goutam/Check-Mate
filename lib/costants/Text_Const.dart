class Text_Const {

  final String hist = 'Chess is a two-player strategy board game that has been played for centuries. It originated in India and spread to Persia, then to Europe.';
  final String obj = 'The goal is to checkmate your opponent’s king, meaning the king is in a position to be captured and cannot escape.';

  final String boardDesc = 'The chessboard is an 8x8 grid with alternating light and dark squares.\nEach player starts with 16 pieces: 1 king, 1 queen, 2 rooks, 2 bishops, 2 knights, and 8 pawns. The pieces are arranged with the rooks in the corners, knights next to them, bishops next, the queen on her color, and the king on the remaining square.';

  final pieceMap = {
    'King:Moves one square in any direction': [
      'assets/3d_piece_img/black_king.jpg',
      'assets/3d_piece_img/white_king.jpg',
      'assets/2d_piece_img/black_king.jpg',
      'assets/2d_piece_img/white_king.jpg'
    ],
    'Queen:Moves any number of squares in any direction.': [
      'assets/3d_piece_img/black_queen.jpg',
      'assets/3d_piece_img/white_queen.jpg',
      'assets/2d_piece_img/black_queen.jpg',
      'assets/2d_piece_img/white_queen.jpg'
    ],
    'Rook:Moves any number of squares horizontally or vertically.': [
      'assets/3d_piece_img/black_rook.jpg',
      'assets/3d_piece_img/white_rook.jpg',
      'assets/2d_piece_img/black_rook.jpg',
      'assets/2d_piece_img/white_rook.jpg'
    ],
    'Bishop:Moves any number of squares diagonally.': [
      'assets/3d_piece_img/black_bishop.jpg',
      'assets/3d_piece_img/white_bishop.jpg',
      'assets/2d_piece_img/black_bishop.jpg',
      'assets/2d_piece_img/white_bishop.jpg'
    ],
    'Knight:Moves in an L-shape: two squares in one direction and then one square perpendicular.': [
      'assets/3d_piece_img/black_knight.jpg',
      'assets/3d_piece_img/white_knight.jpg',
      'assets/2d_piece_img/black_knight.jpg',
      'assets/2d_piece_img/white_knight.jpg',
    ],
    'Pawn:Moves forward one square, with the option to move two squares on its first move. Captures diagonally.': [
      'assets/3d_piece_img/black_pawn.jpg',
      'assets/3d_piece_img/white_pawn.jpg',
      'assets/2d_piece_img/black_pawn.jpg',
      'assets/2d_piece_img/white_pawn.jpg'
    ]
  };

  final List<String> move_gif = [
    'assets/piece_movement/king.gif',
    'assets/piece_movement/queen.gif',
    'assets/piece_movement/rook.gif',
    'assets/piece_movement/bishop.gif',
    'assets/piece_movement/knight.gif',
    'assets/piece_movement/pawn.gif'
  ];

}