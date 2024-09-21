import 'package:chess/costants/Text_Const.dart';
import 'package:flutter/material.dart';
import 'package:squares/squares.dart';

class Game_Provider extends ChangeNotifier {

  bool _vsComputer = false;
  bool _isLoading = false;
  int _player = Squares.white;
  Player_Colour _player_colour = Player_Colour.White;

  bool get vsComputer => _vsComputer;
  bool get isLoading => _isLoading;
  int get player => _player;
  Player_Colour get player_colour => _player_colour;

  Future<void> setVsComputer({required bool value}) async {

    _vsComputer = value;
    notifyListeners();

  }

  void setIsLoading({required bool value}) {

    _isLoading = value;
    notifyListeners();

  }

}