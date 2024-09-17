import 'package:flutter/material.dart';

class Game_Provider extends ChangeNotifier {

  bool _vsComputer = false;
  bool _isLoading = false;

  bool get vsComputer => _vsComputer;
  bool get isLoading => _isLoading;

  Future<void> setVsComputer({required bool value}) async {

    _vsComputer = value;
    notifyListeners();

  }

  void setIsLoading({required bool value}) {

    _isLoading = value;
    notifyListeners();

  }

}