import 'package:flutter/cupertino.dart';

class Change_valute extends ChangeNotifier {
  List<int> index = [
    27,
    13,
    14,
    22,
  ];
  List<bool> type_valute = [false, false, false, false];
  void false_triger() {
    type_valute[0] = false;
    type_valute[1] = false;
    type_valute[2] = false;
    type_valute[3] = false;
  }

  void one_trigger() {
    false_triger();
    type_valute[0] = true;
    notifyListeners();
  }

  void two_trigger() {
    false_triger();
    type_valute[1] = true;
    notifyListeners();
  }

  void three_trigger() {
    false_triger();
    type_valute[2] = true;
    notifyListeners();
  }

  void four_trigger() {
    false_triger();
    type_valute[3] = true;
    notifyListeners();
  }

  void set_valute(int x) {
    if (type_valute[0] == true) {
      index[0] = x;
    }
    if (type_valute[1] == true) {
      index[1] = x;
    }
    if (type_valute[2] == true) {
      index[2] = x;
    }
    if (type_valute[3] == true) {
      index[3] = x;
    }
    notifyListeners();
  }
}
