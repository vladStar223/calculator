import 'package:flutter/cupertino.dart';

class Change_of_function extends ChangeNotifier {
  // класс отвечает за  измения функционало приложение
  bool sta_calculator = true;
  bool calculator = false;
  bool calculator_expanded = false;
  bool equation_function = false;
  bool menu = false;
  void change_state_calculator() {
    calculator = true;
    calculator_expanded = false;
    sta_calculator = false;
    menu = false;
    notifyListeners();
  } // функция запуска калькулятора

  void change_state_calculator_expanded() {
    calculator = true;
    menu = false;
    calculator_expanded = true;
    sta_calculator = false;
    notifyListeners();
  } // функция запуска увеличенного калькулятора

  void change_state_menu() {
    calculator = false;
    calculator_expanded = false;
    sta_calculator = false;
    menu = true;
    notifyListeners();
  }

  void change_state_equation_function() {
    menu = false;
    equation_function = true;
    notifyListeners();
  } // функция запуска  решение уравний
}
