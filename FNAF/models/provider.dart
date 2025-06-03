import 'package:flutter/material.dart';

class GameModel with ChangeNotifier {
  int _night = 1;
  bool _isGameOver = false;

  int get night => _night;
  bool get isGameOver => _isGameOver;

  void nextNight() {
    if (!_isGameOver) {
      _night++;
      if (_night > 5) { // Supongamos que hay 5 noches
        _isGameOver = true;
      }
      notifyListeners();
    }
  }

  void gameOver() {
    _isGameOver = true;
    notifyListeners();
  }

  void resetGame() {
    _night = 1;
    _isGameOver = false;
    notifyListeners();
  }
}