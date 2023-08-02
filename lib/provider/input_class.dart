import 'package:calculator/provider/provider_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'calcString.dart';
import 'decision_urv.dart';

class Input_number_equations extends ChangeNotifier implements Input_number {
  bool enter_block = false;
  bool longtap = false;
  bool decision_eql = false;
  List<bool> active_coefficient = [true, false, false, false];
  List<bool> active_input_screen = [true, false, false];
  List<bool> active_resuilt_screen = [false, false, false];
  List<String> text_in_cofficients = [
    "0",
    "0",
    "0",
    "0",
  ];

  /// active_coefficient отвечает за активный коэффецент, ( [0] = a, [1] = b, [2] = c, [3] = d ).
  ///
  /// active_input_screen отвечает какой экран ввода открыт ( [0] = x2, [1] = x3, [2] = x4 ).
  ///
  /// active_resuilt_screen отвечает какой экран результата открыт ( [0] = x2, [1] = x3, [2] = x4 ).
  ///
  /// text_in_cofficients это переменные текста коэффецентов, бывшие a_text, b_text... ( [0] = a, [1] = b, [2] = c, [3] = d ).

  @override
  void ac_press() {
    // TODO: implement ac_press
    if (!enter_block && decision_eql != true) {
      if (longtap == false) {
        if (active_coefficient[0]) {
          text_in_cofficients[0] = '0';
        } else if (active_coefficient[1]) {
          text_in_cofficients[1] = '0';
        } else if (active_coefficient[2]) {
          text_in_cofficients[2] = '0';
        } else if (active_coefficient[3]) {
          text_in_cofficients[3] = '0';
        }
      } else {
        text_in_cofficients[0] = '0';
        text_in_cofficients[1] = '0';
        text_in_cofficients[2] = '0';
        text_in_cofficients[3] = '0';
        longtap = false;
      }
      notifyListeners();
    }
  }
  // BUTTON OF TOTAL DELETE SELECTED VARIABLE (AC Button)

  void minus_press() {
    if (!enter_block && decision_eql != true) {
      String text = determing_to_true_trigger_start();

      if (text == '0') {
        text = '-';
      } else if (text == '-') {
        text = '+';
      } else if (text == '+') {
        text = '-';
      } else {
        if (text[0] == '+') {
          text = '-' + (text.substring(1, text.length));
        } else if (text[0] == '-') {
          text = '+' + (text.substring(1, text.length));
        }
      }

      determing_to_true_trigger_end(text);
      notifyListeners();
    }
  }

  @override
  void comma_press() {
    if (!enter_block && decision_eql != true) {
      String text = determing_to_true_trigger_start();

      if (!text.contains('.')) {
        if (text[0] == '-' || text[0] == '+') {
          text += '.';
        } else {
          text = '+' + text + '.';
        }
      }

      determing_to_true_trigger_end(text);
      notifyListeners();
    }

    // TODO: implement comma_press
  }

  @override
  void delete_press() {
    if (!enter_block && decision_eql != true) {
      String text = determing_to_true_trigger_start();

      text = text.substring(0, text.length - 1);
      if (text == '') {
        text = '0';
      }

      determing_to_true_trigger_end(text);
    }
    notifyListeners();
    // TODO: implement delete_press
  }

  @override
  void determing_to_true_trigger_end(String text) {
    if (active_coefficient[0]) {
      text_in_cofficients[0] = text;
    } else if (active_coefficient[1]) {
      text_in_cofficients[1] = text;
    } else if (active_coefficient[2]) {
      text_in_cofficients[2] = text;
    } else if (active_coefficient[3]) {
      text_in_cofficients[3] = text;
    }
    // TODO: implement determing_to_true_trigger_end
  }

  @override
  String determing_to_true_trigger_start() {
    if (active_coefficient[0]) {
      return text_in_cofficients[0];
    } else if (active_coefficient[1]) {
      return text_in_cofficients[1];
    } else if (active_coefficient[2]) {
      return text_in_cofficients[2];
    } else if (active_coefficient[3]) {
      return text_in_cofficients[3];
    }
    return '';
    // TODO: implement determing_to_true_trigger_start
    throw UnimplementedError();
  }

  @override
  void nums_press(String enternumber) {
    if (!enter_block && decision_eql != true) {
      String text = determing_to_true_trigger_start();

      if (enternumber == '0' && text == '0') {
        return;
      } else if (text.length == 1 && text[0] == '0') {
        text = '+';
      }
      if (text.length < 12) {
        text += enternumber;
      }
      determing_to_true_trigger_end(text);
      notifyListeners();
    }

    // TODO: implement nums_press
  }

  @override
  void resuilt() {
    if (decision_eql == false) {
      enter_block = true;
      decision_eql = true;
      notifyListeners();
    }
    if (active_input_screen[0]) {
      active_resuilt_screen[0] = true;
    } else if (active_input_screen[1]) {
      active_resuilt_screen[1] = true;
    } else if (active_input_screen[2]) {
      active_resuilt_screen[2] = true;
    }
    // проверка какой именно экран результата открывать

    // TODO: implement resuilt
  }

  void setlongtap_ac() {
    if (!enter_block) {
      if (longtap == true) {
        longtap = false;
      } else {
        longtap = true;
      }
      notifyListeners();
    }
  }

  void Switch_from_D_to_C() {
    if (active_coefficient[3]) {
      active_coefficient[2] = true;
      active_coefficient[3] = false;
    }
    //переключает активный коэф с D на C если был переход с ур-ем х3 на остальные ур-я
  } //переключает активный коэф с D на C если был переход с ур-ем х3 на остальные ур-я

  void A_trigger() {
    active_coefficient[0] = true;
    active_coefficient[1] = false;
    active_coefficient[2] = false;
    active_coefficient[3] = false;
    notifyListeners();
  } // переключение на активный ввод

  void B_trigger() {
    active_coefficient[0] = false;
    active_coefficient[1] = true;
    active_coefficient[2] = false;
    active_coefficient[3] = false;
    notifyListeners();
  }

  void C_trigger() {
    active_coefficient[0] = false;
    active_coefficient[1] = false;
    active_coefficient[2] = true;
    active_coefficient[3] = false;
    notifyListeners();
  }

  void D_trigger() {
    active_coefficient[0] = false;
    active_coefficient[1] = false;
    active_coefficient[2] = false;
    active_coefficient[3] = true;
    notifyListeners();
  }

  void All_resuilt_bool_to_false() {
    active_resuilt_screen[0] = false;
    active_resuilt_screen[1] = false;
    active_resuilt_screen[2] = false;
  } //обновляют значение активных экранов вывода

  void animated_first_screen() {
    enter_block = false;
    active_input_screen[0] = true;
    active_input_screen[1] = false;
    active_input_screen[2] = false;
    All_resuilt_bool_to_false();
    Switch_from_D_to_C();
    notifyListeners();
  } //переключение на экран ввода х2

  void animated_second_screen() {
    enter_block = false;
    active_input_screen[0] = false;
    active_input_screen[1] = true;
    active_input_screen[2] = false;
    All_resuilt_bool_to_false();
    notifyListeners();
  } //переключение на экран ввода х3

  void animated_third_screen() {
    enter_block = false;

    active_input_screen[0] = false;
    active_input_screen[1] = false;
    active_input_screen[2] = true;

    All_resuilt_bool_to_false();
    Switch_from_D_to_C();

    notifyListeners();
  } //переключение на экран ввода х4

  void resuilt_anim_screen() {
    enter_block = true;

    if (active_input_screen[0]) {
      active_resuilt_screen[0] = true;
    } else if (active_input_screen[1]) {
      active_resuilt_screen[1] = true;
    } else if (active_input_screen[2]) {
      active_resuilt_screen[2] = true;
    } // проверка какой именно экран результата открывать

    notifyListeners();
  } // переключение на нужный экран результата
}

// ignore: camel_case_types
class Input_number_calculator extends ChangeNotifier implements Input_number {
  String count = "0";
  String result = "0";
  bool decide = false;
  int text_length = 40; // отвечает за максимальную длинну count
  String determing_to_true_trigger_start() {
    return count;
    notifyListeners();
  }

  void determing_to_true_trigger_end(String text) {
    // TODO: implement Determing_to_true_trigger_end
    count = text;
    notifyListeners();
  }

  /// бла бла бла фунциця [determing_to_true_trigger_end] такая то
  @override
  void minus_press() {
    // TODO: implement Minus_press
    String text = determing_to_true_trigger_start();
    if (text == '0') {
      text = '-';
    } else {
      if (text[text.length - 1] == "+" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%" ||
          text[text.length - 1] == "^") {
        text = text.substring(0, text.length - 1);
        text += "-";
      } else if (text.length < text_length &&
          text[text.length - 1] != "-" &&
          text[text.length - 1] != ".") {
        text += "-";
      }
    }

    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  void plus_press() {
    String text = determing_to_true_trigger_start();
    if (text == '0') {
      text = '+';
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%" ||
          text[text.length - 1] == "^") {
        text = text.substring(0, text.length - 1);
        text += "+";
      } else if (text.length < text_length &&
          text[text.length - 1] != "+" &&
          text[text.length - 1] != ".") {
        text += "+";
      }
    }

    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

//÷
  void multiplication() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%" ||
          text[text.length - 1] == "^") {
        text = text.substring(0, text.length - 1);
        text += "×";
      } else if (text.length < text_length &&
          text[text.length - 1] != "×" &&
          text[text.length - 1] != ".") {
        text += "×";
      }
    }
    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  void division() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "%" ||
          text[text.length - 1] == "^") {
        text = text.substring(0, text.length - 1);
        text += "÷";
      } else if (text.length < text_length &&
          text[text.length - 1] != "÷" &&
          text[text.length - 1] != ".") {
        text += "÷";
      }
    }
    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  void percent_of_number() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "÷") {
        text = text.substring(0, text.length - 1);
        text += "%";
      } else if (text.length < text_length &&
          text[text.length - 1] != "%" &&
          text[text.length - 1] != ".") {
        text += "%";
      }
    }
    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  void degree() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%" ||
          text[text.length - 1] == "×") {
        text = text.substring(0, text.length - 1);
        text += "^";
      } else if (text.length < text_length &&
          text[text.length - 1] != "^" &&
          text[text.length - 1] != ".") {
        text += "^";
      }
    }
    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  void minus_degree() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%" ||
          text[text.length - 1] == "×") {
        text = text.substring(0, text.length - 1);
        text += "^(-1)";
      } else if (text.length < text_length &&
          text[text.length - 1] != "^" &&
          text[text.length - 1] != ".") {
        text += "^(-1)";
      }
    }
    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

//√
  void root() {
    String text = determing_to_true_trigger_start();
    if (text[text.length - 1] == "1" ||
        text[text.length - 1] == "2" ||
        text[text.length - 1] == "3" ||
        text[text.length - 1] == "4" ||
        text[text.length - 1] == "5" ||
        text[text.length - 1] == "6" ||
        text[text.length - 1] == "7" ||
        text[text.length - 1] == "8" ||
        text[text.length - 1] == "9") {
      text = text + "×" + "√";
    } else {
      text = "√";
    }

    //
    determing_to_true_trigger_end(text);
    check_number(text);
    decide_online();
    notifyListeners();
  }

  void log() {
    String text = determing_to_true_trigger_start();
    if (text[text.length - 1] == "1" ||
        text[text.length - 1] == "2" ||
        text[text.length - 1] == "3" ||
        text[text.length - 1] == "4" ||
        text[text.length - 1] == "5" ||
        text[text.length - 1] == "6" ||
        text[text.length - 1] == "7" ||
        text[text.length - 1] == "8" ||
        text[text.length - 1] == "9") {
      text = text + "×" + "lg";
    } else {
      if (text != "0") {
        text += "lg";
      } else {
        text = "lg";
      }
    }

    //
    determing_to_true_trigger_end(text);
    check_number(text);
    notifyListeners();
  }

  void ln() {
    String text = determing_to_true_trigger_start();
    if (text[text.length - 1] == "1" ||
        text[text.length - 1] == "2" ||
        text[text.length - 1] == "3" ||
        text[text.length - 1] == "4" ||
        text[text.length - 1] == "5" ||
        text[text.length - 1] == "6" ||
        text[text.length - 1] == "7" ||
        text[text.length - 1] == "8" ||
        text[text.length - 1] == "9") {
      text = text + "×" + "ln";
    } else {
      if (text != "0") {
        text += "ln";
      } else {
        text = "ln";
      }
    }

    //
    determing_to_true_trigger_end(text);
    check_number(text);
    notifyListeners();
  }

  bool arc = false;
  bool deg = true;
  void set_arc() {
    if (arc == true) {
      arc = false;
    } else {
      arc = true;
    }
    notifyListeners();
  }

  set_deg_rad() {
    if (deg == true) {
      deg = false;
    } else {
      deg = true;
    }
    notifyListeners();
  }

  void sin() {
    String text = determing_to_true_trigger_start();
    if (arc == false) {
      if (text[text.length - 1] == "1" ||
          text[text.length - 1] == "2" ||
          text[text.length - 1] == "3" ||
          text[text.length - 1] == "4" ||
          text[text.length - 1] == "5" ||
          text[text.length - 1] == "6" ||
          text[text.length - 1] == "7" ||
          text[text.length - 1] == "8" ||
          text[text.length - 1] == "9") {
        text = text + "×" + "sin";
      } else {
        if (text != "0") {
          text += "sin";
        } else {
          text = "sin";
        }
      }

      //
    } else {
      if (text[text.length - 1] == "1" ||
          text[text.length - 1] == "2" ||
          text[text.length - 1] == "3" ||
          text[text.length - 1] == "4" ||
          text[text.length - 1] == "5" ||
          text[text.length - 1] == "6" ||
          text[text.length - 1] == "7" ||
          text[text.length - 1] == "8" ||
          text[text.length - 1] == "9") {
        text = text + "×" + "arcsin";
      } else {
        if (text != "0") {
          text += "arcsin0.";
        } else {
          text = "arcsin0.";
        }
      }
    }

    get_rad_deg(deg);
    determing_to_true_trigger_end(text);
    check_number(text);
    notifyListeners();
  }

  void cos() {
    String text = determing_to_true_trigger_start();
    if (arc == false) {
      if (text[text.length - 1] == "1" ||
          text[text.length - 1] == "2" ||
          text[text.length - 1] == "3" ||
          text[text.length - 1] == "4" ||
          text[text.length - 1] == "5" ||
          text[text.length - 1] == "6" ||
          text[text.length - 1] == "7" ||
          text[text.length - 1] == "8" ||
          text[text.length - 1] == "9") {
        text = text + "×" + "cos";
      } else {
        if (text != "0") {
          text += "cos";
        } else {
          text = "cos";
        }
      }
    } else {
      if (text[text.length - 1] == "1" ||
          text[text.length - 1] == "2" ||
          text[text.length - 1] == "3" ||
          text[text.length - 1] == "4" ||
          text[text.length - 1] == "5" ||
          text[text.length - 1] == "6" ||
          text[text.length - 1] == "7" ||
          text[text.length - 1] == "8" ||
          text[text.length - 1] == "9") {
        text = text + "×" + "arccos0.";
      } else {
        if (text != "0") {
          text += "arccos0.";
        } else {
          text = "arccos0.";
        }
      }
    }

    get_rad_deg(deg);
    determing_to_true_trigger_end(text);
    check_number(text);
    notifyListeners();
  }

  void tan() {
    String text = determing_to_true_trigger_start();
    if (arc == false) {
      if (text[text.length - 1] == "1" ||
          text[text.length - 1] == "2" ||
          text[text.length - 1] == "3" ||
          text[text.length - 1] == "4" ||
          text[text.length - 1] == "5" ||
          text[text.length - 1] == "6" ||
          text[text.length - 1] == "7" ||
          text[text.length - 1] == "8" ||
          text[text.length - 1] == "9") {
        text = text + "×" + "tan";
      } else {
        if (text != "0") {
          text += "tan";
        } else {
          text = "tan";
        }
      }
    } else {
      if (text[text.length - 1] == "1" ||
          text[text.length - 1] == "2" ||
          text[text.length - 1] == "3" ||
          text[text.length - 1] == "4" ||
          text[text.length - 1] == "5" ||
          text[text.length - 1] == "6" ||
          text[text.length - 1] == "7" ||
          text[text.length - 1] == "8" ||
          text[text.length - 1] == "9") {
        text = text + "×" + "arctan0.";
      } else {
        if (text != "0") {
          text += "arctan0.";
        } else {
          text = "arctan0.";
        }
      }
    }

    get_rad_deg(deg);
    determing_to_true_trigger_end(text);
    check_number(text);
    notifyListeners();
  }

  void factorial() {
    String text = determing_to_true_trigger_start();
    text = text + "!";
    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  // проверка числа на правильность
  String check_number(text) {
    if (text[text.length - 1] == "-" ||
        text[text.length - 1] == "×" ||
        text[text.length - 1] == "÷" ||
        text[text.length - 1] == "%" ||
        text[text.length - 1] == "+" ||
        text[text.length - 1] == "√") {
      if (text.length == 1 ||
          text[text.length - 1] == "lg" ||
          text[text.length - 1] == "ln" ||
          text[text.length - 1] == "sin" ||
          text[text.length - 1] == "cos" ||
          text[text.length - 1] == "tan" ||
          text[text.length - 1] == "arcsin" ||
          text[text.length - 1] == "arccos" ||
          text[text.length - 1] == "arctan") {
        return "0";
        print("dd");
      } else {
        return text = text.substring(0, text.length - 1);
      }
    } else {
      return text;
    }
  }

  @override
  void nums_press(String enternumber) {
    // TODO: implement Nums_press
    String text = determing_to_true_trigger_start();
    if (enternumber == '0' && text == '0') {
      text = enternumber;
    } else if (text.length == 1 && text[0] == '0') {
      text = enternumber;
    } else {
      if (text.length < text_length) {
        if (enternumber == "(") {
          if (text[text.length - 1] == "1" ||
              text[text.length - 1] == "2" ||
              text[text.length - 1] == "3" ||
              text[text.length - 1] == "4" ||
              text[text.length - 1] == "5" ||
              text[text.length - 1] == "6" ||
              text[text.length - 1] == "7" ||
              text[text.length - 1] == "8" ||
              text[text.length - 1] == "9" ||
              text[text.length - 1] == "0") {
            text = "$text×$enternumber";
          } else if (text[text.length - 1] == "+" ||
              text[text.length - 1] == "-" ||
              text[text.length - 1] == "×" ||
              text[text.length - 1] == "÷" ||
              text[text.length - 1] == "%" ||
              text[text.length - 1] == "^" ||
              text[text.length - 1] == "√") {
            text += enternumber;
          }
        } else {
          text += enternumber;
        }
      }
    }

    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  @override
  void ac_press() {
    // TODO: implement ac_press
    count = "0";
    result = "0";
    decide = false;
    notifyListeners();
  }

  @override
  void comma_press() {
    String text = determing_to_true_trigger_start();
    if (text[text.length - 1] != "." &&
        text[text.length - 1] != "-" &&
        text[text.length - 1] != "+" &&
        text[text.length - 1] != "×" &&
        text[text.length - 1] != "÷" &&
        text[text.length - 1] != "^") {
      text = text + '.';
    } // дописать для всех возможны случаев

    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
    // TODO: implement comma_press
  }

  @override
  void delete_press() {
    // TODO: implement delete_press
    String text = determing_to_true_trigger_start();

    text = text.substring(0, text.length - 1);
    if (text == '') {
      text = '0';
    }

    determing_to_true_trigger_end(text);
    decide_online();
    notifyListeners();
  }

  void decide_online() {
    String text = determing_to_true_trigger_start();
    decide = true;
    String text2 = check_number(text);
    result = calcString(check_number(text2)).toString();
    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  @override
  void resuilt() {
    // TODO: implement resuilt
    String text = determing_to_true_trigger_start();
    decide = false;
    count = result;
    notifyListeners();
  }

  void setlongtap_ac() {}
}
