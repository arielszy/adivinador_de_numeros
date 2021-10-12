import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier {
  final Map<String, int> add = {
    '1': 1,
    '2': 2,
    '3': 4,
    '4': 8,
    '5': 16,
    '6': 32,
    '7': 64,
  };

  int currentCard = 1;
  int numberGuessed = 0;
  String btnN = '';
  void next(String btn) {
    btnN = btn;
    if (btn == 'y' && currentCard <= 8) {
      int ind = add[currentCard.toString()] ?? 0;
      numberGuessed += ind;
    }
    currentCard++;
    notifyListeners();
  }

  void reset() {
    currentCard = 1;
    numberGuessed = 0;
    notifyListeners();
  }
}
