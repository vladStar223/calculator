interface class Input_number {
  //List<String> text_in_cofficients = ['0', '0', '0', '0'];
  //text_in_cofficients это переменные текста коэффецентов, бывшие a_text, b_text... ( [0] = a, [1] = b, [2] = c, [3] = d ).

  //List<bool> active_coefficient = [true, false, false, false];
  // active_coefficient отвечает за активный коэффецент, ( [0] = a, [1] = b, [2] = c, [3] = d ).
  String determing_to_true_trigger_start() {
    return "0";
  } // функция получение того текста который

  void determing_to_true_trigger_end(
      String text) {} //функция  отправки  что было введино
  void nums_press(String enternumber) {}
  void resuilt() {} //функция  кнопки  '='

  void delete_press() {} // функция удаление символа

  void comma_press() {} // функция запятой в числе

  void ac_press() {} // функция  очистки ввода
} // отвечает за итерфейс ввода чисел для разных классов
