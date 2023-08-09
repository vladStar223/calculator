import 'package:flutter/cupertino.dart';

class Change_of_function extends ChangeNotifier {
  // класс отвечает за  измения функционало приложение
  bool sta_calculator = true;
  bool calculator = false;
  bool calculator_expanded = false;
  bool equation_function = false;
  bool menu = false;
  bool currency_convert = false;
  void change_state_calculator() {
    calculator = true;
    sta_calculator = false;
    calculator_expanded = false;
    equation_function = false;
    currency_convert = false;
    menu = false;
    notifyListeners();
  } // функция запуска калькулятора

  void change_state_calculator_expanded() {
    calculator = false;
    calculator_expanded = true;
    notifyListeners();
  } // функция запуска увеличенного калькулятора

  void change_state_menu() {
    calculator = false;
    calculator_expanded = false;
    equation_function = false;
    currency_convert = false;
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
}
