import 'package:flutter/cupertino.dart';

class ChangeFunction extends ChangeNotifier {
  // класс отвечает за  измения функционало приложение
  bool sta_calculator = true;
  bool calculator = false;
  bool calculator_expanded = false;
  bool equation_function = false;
  bool menu = false;
  bool currency_convert = false;
  bool logarithm = false;
  void change_state_calculator() {
    change_false();
    sta_calculator = false;
    calculator = true;
    notifyListeners();
  } // функция запуска калькулятора

  void change_state_calculator_expanded() {
    calculator = false;
    calculator_expanded = true;
    notifyListeners();
  } // функция запуска увеличенного калькулятора

  void change_false() {
    calculator = false;
    calculator_expanded = false;
    equation_function = false;
    currency_convert = false;
    logarithm = false;
    menu = false;
  }

  void change_state_menu() {
    change_false();
    menu = true;
    notifyListeners();
  }

  void change_state_currency_convert() {
    menu = false;
    currency_convert = true;
    notifyListeners();
  }

  void change_state_equation_function() {
    menu = false;
    equation_function = true;
    notifyListeners();
  } // функция запуска  решение уравний

  void change_state_logarithm() {
    menu = false;
    logarithm = true;
    notifyListeners();
  }
}
