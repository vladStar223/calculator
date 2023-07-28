import 'package:flutter/cupertino.dart';

class Change_of_function extends ChangeNotifier {
  // класс отвечает за  измения функционало приложение
  bool calculator = true;
  bool calculator_expanded = false;
  bool equation_function = false;
  void change_state_calculator() {
    calculator = true;
    calculator_expanded = false;
    equation_function = false;
    notifyListeners();
  } // функция запуска калькулятора

  void change_state_calculator_expanded() {
    calculator = true;
    calculator_expanded = true;
    equation_function = false;
    notifyListeners();
  } // функция запуска увеличенного калькулятора

  void change_state_equation_function() {
    calculator = false;
    calculator_expanded = false;
    equation_function = true;
    notifyListeners();
  } // функция запуска  решение уравний
}
