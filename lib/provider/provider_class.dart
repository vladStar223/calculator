import 'dart:math';

import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/switching%20classes/animated_class.dart';

class choose_button extends ChangeNotifier {
  static BuildContext? get context => null;
  var AppColors = Provider.of<AppColor>(context!);
  /*
  //Color _color_button1 = AppColors.buttoncolor1;
  Color _color_button2 = AppColors.white;
  Color color_button = AppColors.buttoncolor1;
  Color color_button1 = AppColors.buttoncolor1;
  Color color_button2 = AppColors.buttoncolor1;

  void change_color(int number) {
    if (number == 0) {
      if (color_button == _color_button1) {
        color_button = _color_button2;
        color_button1 = _color_button1;
        color_button2 = _color_button1;
      } else {
        color_button = _color_button1;
      }
    }
    if (number == 1) {
      if (color_button1 == _color_button1) {
        color_button1 = _color_button2;
        color_button = _color_button1;
        color_button2 = _color_button1;
      } else {
        color_button1 = _color_button1;
      }
    }
    if (number == 2) {
      if (color_button2 == _color_button1) {
        color_button2 = _color_button2;
        color_button = _color_button1;
        color_button1 = _color_button1;
      } else {
        color_button2 = _color_button1;
      }
    }
    notifyListeners();
  }
  */
} //класс который отвечает за  смену цвета в кнопке

class input_number extends ChangeNotifier {
  @override
  Color color_of_border = Colors.blue; //цвет рамки для полей ввода
  double a = 0.0, b = 0.0, c = 0.0, d = 0.0;

  List<bool> urv = [
    true,
    false,
    false,
  ]; // храняет значение выбора типа уравнений для подсчета
  bool longtap = false;
  bool enter_block = false;

  List<String> text_in_cofficients = ['0', '0', '0', '0'];

  List<bool> active_coefficient = [true, false, false, false];
  List<bool> active_input_screen = [true, false, false];
  List<bool> active_resuilt_screen = [false, false, false];

  /// active_coefficient отвечает за активный коэффецент, ( [0] = a, [1] = b, [2] = c, [3] = d ).
  ///
  /// active_input_screen отвечает какой экран ввода открыт ( [0] = x2, [1] = x3, [2] = x4 ).
  ///
  /// active_resuilt_screen отвечает какой экран результата открыт ( [0] = x2, [1] = x3, [2] = x4 ).
  ///
  /// text_in_cofficients это переменные текста коэффецентов, бывшие a_text, b_text... ( [0] = a, [1] = b, [2] = c, [3] = d ).

  void zerourv() {
    D = 0;
    x1 = 0;
    x2 = "0";
    x3 = "0";
    x4 = 0;
    kv = 0;
    kx = 0;
    notifyListeners();
  }

  void Switch_from_D_to_C() {
    if (active_coefficient[3]) {
      active_coefficient[2] = true;
      active_coefficient[3] = false;
    }
    //переключает активный коэф с D на C если был переход с ур-ем х3 на остальные ур-я
  } //часто повторялись, сделал отдельную функцию

  void All_resuilt_bool_to_false() {
    active_resuilt_screen[0] = false;
    active_resuilt_screen[1] = false;
    active_resuilt_screen[2] = false;
  } //часто повторялись, сделал отдельную функцию

  String Determing_to_true_trigger_start() {
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
  } //часто повторялись, сделал отдельную функци

  void Determing_to_true_trigger_end(String text) {
    if (active_coefficient[0]) {
      text_in_cofficients[0] = text;
    } else if (active_coefficient[1]) {
      text_in_cofficients[1] = text;
    } else if (active_coefficient[2]) {
      text_in_cofficients[2] = text;
    } else if (active_coefficient[3]) {
      text_in_cofficients[3] = text;
    }
  } //часто повторялись, сделал отдельную функци

  void A_trigger() {
    active_coefficient[0] = true;
    active_coefficient[1] = false;
    active_coefficient[2] = false;
    active_coefficient[3] = false;
    notifyListeners();
  }

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

  void Animated_first_screen() {
    enter_block = false;

    active_input_screen[0] = true;
    active_input_screen[1] = false;
    active_input_screen[2] = false;

    All_resuilt_bool_to_false();
    Switch_from_D_to_C();
    savemode(0);
    zerourv();

    notifyListeners();
  } //переключение на экран ввода х2

  void Animated_second_screen() {
    enter_block = false;

    active_input_screen[0] = false;
    active_input_screen[1] = true;
    active_input_screen[2] = false;

    All_resuilt_bool_to_false();
    savemode(1);
    zerourv();

    notifyListeners();
  } //переключение на экран ввода х3

  void Animated_third_screen() {
    enter_block = false;

    active_input_screen[0] = false;
    active_input_screen[1] = false;
    active_input_screen[2] = true;

    All_resuilt_bool_to_false();
    Switch_from_D_to_C();
    savemode(2);
    zerourv();

    notifyListeners();
  } //переключение на экран ввода х4

  void savemode(int x) {
    if (x == 0) {
      urv[0] = true;
      urv[1] = false;
      urv[2] = false;
    }
    if (x == 1) {
      urv[1] = true;
      urv[2] = false;
      urv[0] = false;
    }
    if (x == 2) {
      urv[2] = true;
      urv[1] = false;
      urv[0] = false;
    }
    notifyListeners();
  }

  void Resuilt_anim_screen() {
    enter_block = true;

    if (active_input_screen[0]) {
      active_resuilt_screen[0] = true;
    } else if (active_input_screen[1]) {
      active_resuilt_screen[1] = true;
    } else if (active_input_screen[2]) {
      active_resuilt_screen[2] = true;
    } // проверка какой именно экран результата открывать

    decision_ur();
    notifyListeners();
  } //функция  кнопки  '='

  void Nums_press(String enternumber) {
    if (!enter_block) {
      String text = Determing_to_true_trigger_start();

      if (enternumber == '0' && text == '0') {
        return;
      } else if (text.length == 1 && text[0] == '0') {
        text = '+';
      }
      if (text.length < 12) {
        text += enternumber;
      }

      Determing_to_true_trigger_end(text);
    }
    notifyListeners();
  }

  void Delete_press() {
    if (!enter_block) {
      String text = Determing_to_true_trigger_start();

      text = text.substring(0, text.length - 1);
      if (text == '') {
        text = '0';
      }

      Determing_to_true_trigger_end(text);
    }
    notifyListeners();
  }

  void Minus_press() {
    if (!enter_block) {
      String text = Determing_to_true_trigger_start();

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

      Determing_to_true_trigger_end(text);
    }
    notifyListeners();
  }

  void Comma_press() {
    if (!enter_block) {
      String text = Determing_to_true_trigger_start();

      if (!text.contains('.')) {
        if (text[0] == '-' || text[0] == '+') {
          text += '.';
        } else {
          text = '+' + text + '.';
        }
      }

      Determing_to_true_trigger_end(text);
    }
    notifyListeners();
  }

  void AC_press() {
    if (!enter_block) {
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
    }
    notifyListeners();
  } // BUTTON OF TOTAL DELETE SELECTED VARIABLE (AC Button)

  void setlongtap_ac() {
    if (!enter_block) {
      if (longtap == true) {
        longtap = false;
      } else {
        longtap = true;
      }
    }
    notifyListeners();
  }

  double x1 = 0;
  String x2 = "0.0";
  String x3 = "0.0";
  double x4 = 0;
  int kx = 0;
  int kv = 0;
  String urvshow =
      "0"; // отвечает за отображение полного уравнения в экране вывода
  double D = 0;
  late List<String> x;
  void check_int() {
    if (text_in_cofficients[0] != "-" && text_in_cofficients[0] != "+") {
      a = double.parse(text_in_cofficients[0]);
    } else {
      if (text_in_cofficients[0] == "-") {
        a = -1;
        text_in_cofficients[0] = "-";
      }
      if (text_in_cofficients[0] == "+") {
        a = 1;
        text_in_cofficients[0] = "-";
      }
    }
    if (text_in_cofficients[1] != "-" && text_in_cofficients[1] != "+") {
      b = double.parse(text_in_cofficients[1]);
    } else {
      if (text_in_cofficients[1] == "-") {
        b = -1;
        text_in_cofficients[1] = "-1";
      }
      if (text_in_cofficients[1] == "+") {
        b = 1;
        text_in_cofficients[1] = "+1";
      }
    }
    if (text_in_cofficients[2] != "-" && text_in_cofficients[2] != "+") {
      c = double.parse(text_in_cofficients[2]);
    } else {
      if (text_in_cofficients[2] == "-") {
        c = -1;
        text_in_cofficients[2] = "-1";
      }
      if (text_in_cofficients[2] == "+") {
        c = 1;
        text_in_cofficients[2] = "+1";
      }
    }
    if (text_in_cofficients[3] != "-" && text_in_cofficients[3] != "+") {
      d = double.parse(text_in_cofficients[3]);
    } else {
      if (text_in_cofficients[3] == "-") {
        d = -1;
        text_in_cofficients[3] = "-1";
      }
      if (text_in_cofficients[3] == "+") {
        d = 1;
        text_in_cofficients[3] = "+1";
      }
    }
  }

  void decision_ur() {
    check_int();
    if (urv[0] == true) {
      urvshow =
          "${text_in_cofficients[0]} x² ${text_in_cofficients[1]} x ${text_in_cofficients[2]} = 0";
      kv = 0;
      d = (b * b) - 4 * a * c;
      if (a == 0) {
        x1 = -c / b;
        kx = 1;
      }
      if (b == 0) {
        x1 = -c / b;
        x1 = sqrt(x1);
        kx = 1;
      }
      if (c == 0) {
        x1 = 0;
        x2 = (-b / a).toString();
      }
      if (d > 0) {
        D = sqrt(d);
        x1 = ((-b + D) / (2 * a));
        x2 = ((-b - D) / (2 * a)).toString();
        kx = 2;
      }
      if (d == 0) {
        x1 = (-1 * b) / (2 * a);
        x1 = sqrt(x1) * 1;
        x2 = (x1 * -1).toString();
      }
      if (a == 0 && c == 0) {
        x1 = 0;
        kx = 1;
      }
      if (b == 0 && c == 0) {
        x1 = 0;
        kx = 1;
      }
      if (a == 0 && b == 0) {
        kx = 0;
      } // не рабочие решения
      if (a == 0 && b == 0 && c == 0) {
        kx = 0;
        if (kDebugMode) {
          print("ошибка");
        }
      }
      notifyListeners(); // не рабочие решения
    }
    if (urv[1] == true) {
      urvshow =
          "${text_in_cofficients[0]} x³ ${text_in_cofficients[1]} x² ${text_in_cofficients[2]} + ${text_in_cofficients[3]} = 0";
      if (a != 1) {
        double a1 = b / a;
        double b1 = c / a;
        double c1 = d / a;
        decision_cubic(
          a1,
          b1,
          c1,
        );
      } else {
        decision_cubic(
          b,
          c,
          d,
        );
      }
      //print(x1);
      //print(x2);
      //print(x3);
    }
    if (urv[2] == true) {
      urvshow =
          "${text_in_cofficients[0]} x⁴ ${text_in_cofficients[1]} x² ${text_in_cofficients[2]}  = 0";
      kv = 0;
      d = (b * b) - 4 * a * c;
      if (a == 0) {
        x1 = -c / b;
        x1 = sqrt(x1) * 1;
        x2 = (sqrt(x1) * -1).toString();
        kx = 1;
      }
      if (b == 0) {
        x1 = -c / b;
        x1 = sqrt(x1);
        x1 = sqrt(x1) * 1;
        x2 = (sqrt(x1) * -1).toString();
        kx = 1;
      }
      if (c == 0) {}
      if (d > 0) {
        D = sqrt(d);
        x1 = ((-b + D) / (2 * a));
        x2 = ((-b - D) / (2 * a)).toString();
        print(x1);
        x3 = (sqrt(double.parse(x2)) * -1).toString();
        x4 = sqrt(double.parse(x2)) * 1;
        x1 = sqrt(x1) * 1;
        x2 = (x1 * -1).toString();
      }
      if (d == 0) {
        x1 = (-1 * b) / (2 * a);
        x1 = sqrt(x1) * 1;
        x2 = (x1 * -1).toString();
      }
      if (a == 0 && c == 0) {
        x1 = 0;
        x1 = sqrt(x1) * 1;
        x2 = (sqrt(x1) * -1).toString();
        kx = 1;
      }
      if (b == 0 && c == 0) {
        x1 = 0;
        kx = 1;
      }
      if (a == 0 && b == 0) {
        kx = 0;
      } // не рабочие решения
      if (a == 0 && b == 0 && c == 0) {
        kx = 0;
        if (kDebugMode) {
          print("ошибка");
        }
      }

      print(x1);
      print(x2);
      print(x3);
      print(x4);

      notifyListeners();
    }
  }

  void decision_cubic(double a, double b, double c) {
    //числа после деления на а и без коэффицпента первого
    num Q = ((a * a) - 3 * b) / 9;
    num R = (2 * (a * a * a) - 9 * a * b + 27 * c) / 54;
    num S = (Q * Q * Q) - (R * R);
    print(Q);
    print(R);
    print(S);
    if (S > 0) {
      num f = (1 / 3) * acos(R / (sqrt(Q * Q * Q)));
      x1 = -2 * sqrt(Q) * cos(f) - a / 3;
      x2 = (-2 * sqrt(Q) * cos(f + 2 * pi / 3) - a / 3).toString();
      x3 = (-2 * sqrt(Q) * cos(f - 2 * pi / 3) - a / 3).toString();
      print(x1);
      print(x2);
      print(x3);
    } else {
      num w = -R.sign * (R.abs() + sqrt(R * R - (Q * Q * Q)));
      num A = pow(w, 1 / 3);
      num B;
      if (A != 0) {
        B = Q / A;
      } else {
        B = 0;
      }
      x1 = (A + B) - a / 3;
      num w1 = -(A + B) / 2 * a / 3;
      num w2 = sqrt(3) * (A - B) / 2;
      String x22 = w1.toString() + " + i * " + w2.toString();
      w1 = (A + B) / 2 * a / 3;
      w2 = sqrt(3) * (A - B) / 2;
      String x33 = w1.toString() + "+ i * " + w2.toString();
      if (x22 == x33) {
        x22 = (-A - a / 3).toString();
        kx = 2;
      } else {
        kx = 3;
      }
      x2 = x22;
      x3 = x33;
      print(x1);
      print(x2);
      print(x3);
    }
    notifyListeners();
  }
} // класс отвещающий за ввод и обработку

class input_number_calculator extends input_number {
  String count = "0";
  @override
  void AC_press() {
    count = "0";
    notifyListeners();
  }

  @override
  String Determing_to_true_trigger_start() {
    return count;
  }

  @override
  void Determing_to_true_trigger_end(String text) {
    // TODO: implement Determing_to_true_trigger_end
    count = text;
    notifyListeners();
  }

  @override
  void Minus_press() {
    // TODO: implement Minus_press
    String text = Determing_to_true_trigger_start();
    if (text == '0') {
      text = '-';
    } else {
      if (text.length == 1 && text[0] == '0') {
        text = '+';
      }
      if (text.length < 30 && text[text.length - 1] != "-") {
        text += "-";
      }
    }

    Determing_to_true_trigger_end(text);
    notifyListeners();
  }

  @override
  void Comma_press() {
    // TODO: implement Comma_press
    String text = Determing_to_true_trigger_start();

    if (text[text.length - 1] != ".") {
      text = text + '.';
    }

    Determing_to_true_trigger_end(text);
    notifyListeners();
  }

  void checktrue(text) {
    int i = 2;
    bool k = true;
    while (i < text.length) {
      i = i + 1;
    }
  }
}

class change_of_function extends ChangeNotifier {
  // класс отвечает за  измения функционало приложение
  bool calculator = true;
  bool equation_function = false;
  void change_state_calculator() {
    calculator = true;
    equation_function = false;
    notifyListeners();
  }

  void change_state_equation_function() {
    calculator = false;
    equation_function = true;
    notifyListeners();
  }
}
/*class decision_urv extends ChangeNotifier {

}
*/
