import 'dart:math';

import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/animated_class.dart';

class choose_button extends ChangeNotifier {
  Color _color_button1 = AppColors().buttoncolor1;
  Color _color_button2 = AppColors().white;
  Color color_button = AppColors().buttoncolor1;
  Color color_button1 = AppColors().buttoncolor1;
  Color color_button2 = AppColors().buttoncolor1;
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
} //класс который отвечает за  смену цвета в кнопке

class input_number extends ChangeNotifier {
  @override
  var color_of_border = Colors.blue; //цвет рамки для полей ввода
  double a = 0.0, b = 0.0, c = 0.0, d = 0.0;
  bool urv2 = true;
  bool urv3 = false;
  bool urv4 = false;
  // переменные
  bool longtap =
      false; // переменная отвечает за AC если она зажата то очищается все ,а не только одно
  String a_text = '0',
      b_text = '0',
      c_text = '0',
      d_text = '0'; // текст с полей ввода для переменных
  bool a_trigger = true,
      c_trigger = false,
      b_trigger = false,
      d_trigger = false; // триггеры коэффицентов
  bool first_anim_screen = true,
      second_anim_screen = false,
      third_anim_screen = false,
      resuilt_anim_screen = false; // БУЛЬКИ ДЛЯ АНИМАЦИЙ

  void A_trigger() {
    a_trigger = true;
    b_trigger = false;
    c_trigger = false;
    d_trigger = false;
    notifyListeners();
  }

  void B_trigger() {
    a_trigger = false;
    b_trigger = true;
    c_trigger = false;
    d_trigger = false;
    notifyListeners();
  }

  void C_trigger() {
    a_trigger = false;
    b_trigger = false;
    c_trigger = true;
    d_trigger = false;
    notifyListeners();
  }

  void D_trigger() {
    a_trigger = false;
    b_trigger = false;
    c_trigger = false;
    d_trigger = true;
    notifyListeners();
  }

  void Animated_first_screen() {
    first_anim_screen = true;
    savemode(0);
    second_anim_screen = false;
    third_anim_screen = false;
    resuilt_anim_screen = false;
    if (d_trigger) {
      c_trigger = true;
      d_trigger = false;
    }
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА Х^2
  }

  void Animated_second_screen() {
    first_anim_screen = false;
    second_anim_screen = true;
    savemode(1);
    third_anim_screen = false;
    resuilt_anim_screen = false;
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА Х^3
  }

  void Animated_third_screen() {
    first_anim_screen = false;
    second_anim_screen = false;
    third_anim_screen = true;
    savemode(2);
    resuilt_anim_screen = false;
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА Х^4 (ДОБАВЬ)
  }

  void savemode(int x) {
    if (x == 0) {
      urv2 = true;
      urv3 = false;
      urv4 = false;
    }
    if (x == 1) {
      urv3 = true;
      urv2 = false;
      urv4 = false;
    }
    if (x == 2) {
      urv4 = true;
      urv2 = false;
      urv3 = false;
    }
    notifyListeners();
  }

  void Resuilt_anim_screen() {
    first_anim_screen = false;
    second_anim_screen = false;
    third_anim_screen = false;
    resuilt_anim_screen = true;
    decision_ur();
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА РАВНО (ДОБАВЬ)
  }

  void Nums_press(String enternumber) {
    if (a_trigger) {
      if (a_text.length == 1 && a_text.indexOf('0') == 0) {
        a_text = '';
        if (a_text.length < 10 &&
            !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += enternumber;
        } else if (a_text.length < 11 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += enternumber;
        } else if (a_text.length < 12 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += enternumber;
        }
      } else if (a_text.length < 10 &&
          !a_text.contains('.') &&
          !a_text.contains('-')) {
        a_text += enternumber;
      } else if (a_text.length < 11 &&
          (a_text.contains('.') || a_text.contains('-'))) {
        a_text += enternumber;
      } else if (a_text.length < 12 &&
          (a_text.contains('.') && a_text.contains('-'))) {
        a_text += enternumber;
      }
    }
    if (b_trigger) {
      if (b_text.length == 1 && b_text.indexOf('0') == 0) {
        b_text = '';
        if (b_text.length < 10 &&
            !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += enternumber;
        } else if (b_text.length < 11 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += enternumber;
        } else if (b_text.length < 12 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += enternumber;
        }
      } else if (b_text.length < 10 &&
          !b_text.contains('.') &&
          !b_text.contains('-')) {
        b_text += enternumber;
      } else if (b_text.length < 11 &&
          (b_text.contains('.') || b_text.contains('-'))) {
        b_text += enternumber;
      } else if (b_text.length < 12 &&
          (b_text.contains('.') && b_text.contains('-'))) {
        b_text += enternumber;
      }
    }
    if (c_trigger) {
      if (c_text.length == 1 && c_text.indexOf('0') == 0) {
        c_text = '';
        if (c_text.length < 10 &&
            !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += enternumber;
        } else if (c_text.length < 11 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += enternumber;
        } else if (c_text.length < 12 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += enternumber;
        }
      } else if (c_text.length < 10 &&
          !c_text.contains('.') &&
          !c_text.contains('-')) {
        c_text += enternumber;
      } else if (c_text.length < 11 &&
          (c_text.contains('.') || c_text.contains('-'))) {
        c_text += enternumber;
      } else if (c_text.length < 12 &&
          (c_text.contains('.') && c_text.contains('-'))) {
        c_text += enternumber;
      }
    }
    if (d_trigger) {
      if (d_text.length == 1 && d_text.indexOf('0') == 0) {
        d_text = '';
        if (d_text.length < 10 &&
            !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += enternumber;
        } else if (d_text.length < 11 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += enternumber;
        } else if (d_text.length < 12 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += enternumber;
        }
      } else if (d_text.length < 10 &&
          !d_text.contains('.') &&
          !d_text.contains('-')) {
        d_text += enternumber;
      } else if (d_text.length < 11 &&
          (d_text.contains('.') || d_text.contains('-'))) {
        d_text += enternumber;
      } else if (d_text.length < 12 &&
          (d_text.contains('.') && d_text.contains('-'))) {
        d_text += enternumber;
      }
    }
    notifyListeners();
  }
  // ввод цифр идет при условии что текущая длина символов <6 (минус и запятая не в счет)
  // при вызове onPressed надо передать значение цифры через анонимную функцию

  void Delete_press() {
    if (a_trigger) {
      if (a_text.length > 0) {
        if (a_text[a_text.length - 1] == '.') {
          a_text = a_text.substring(0, a_text.length - 1);
        } else {
          a_text = a_text.substring(0, a_text.length - 1);
          if (a_text.isEmpty) {
            a_text = '0';
          }
        }
      }
    } else if (b_trigger) {
      if (b_text.length > 0) {
        if (b_text[b_text.length - 1] == '.') {
          b_text = b_text.substring(0, b_text.length - 1);
        } else {
          b_text = b_text.substring(0, b_text.length - 1);
          if (b_text.isEmpty) {
            b_text = '0';
          }
        }
      }
    } else if (c_trigger) {
      if (c_text.length > 0) {
        if (c_text[c_text.length - 1] == '.') {
          c_text = c_text.substring(0, c_text.length - 1);
        } else {
          c_text = c_text.substring(0, c_text.length - 1);
          if (c_text.isEmpty) {
            c_text = '0';
          }
        }
      }
    } else if (d_trigger) {
      if (d_text.length > 0) {
        if (d_text[d_text.length - 1] == '.') {
          d_text = d_text.substring(0, d_text.length - 1);
        } else {
          d_text = d_text.substring(0, d_text.length - 1);
          if (d_text.isEmpty) {
            d_text = '0';
          }
        }
      }
    }
    notifyListeners();
  }

  void Minus_press() {
    if (a_trigger) {
      if (a_text == '0') {
        a_text = '-';
      } else if (a_text.length < 12 && !a_text.contains('-')) {
        a_text = '-' + a_text;
      } else if (a_text.contains('-')) {
        a_text = a_text.substring(1, a_text.length);
      }
      if (a_text == '') {
        a_text = '0';
      }
    } else if (b_trigger) {
      if (b_text == '0') {
        b_text = '-';
      } else if (b_text.length < 12 && !b_text.contains('-')) {
        b_text = '-' + b_text;
      } else if (b_text.contains('-')) {
        b_text = b_text.substring(1, b_text.length);
      }
      if (b_text == '') {
        b_text = '0';
      }
    } else if (c_trigger) {
      if (c_text == '0') {
        c_text = '-';
      } else if (c_text.length < 12 && !c_text.contains('-')) {
        c_text = '-' + c_text;
      } else if (c_text.contains('-')) {
        c_text = c_text.substring(1, c_text.length);
      }
      if (c_text == '') {
        c_text = '0';
      }
    } else if (d_trigger) {
      if (d_text == '0') {
        d_text = '-';
      } else if (d_text.length < 12 && !d_text.contains('-')) {
        d_text = '-' + d_text;
      } else if (d_text.contains('-')) {
        d_text = d_text.substring(1, d_text.length);
      }
      if (d_text == '') {
        d_text = '0';
      }
    }
    notifyListeners();
  }

  void Comma_press() {
    if (a_trigger) {
      if (!a_text.contains('.')) {
        a_text += '.';
      }
    } else if (b_trigger) {
      if (!b_text.contains('.')) {
        b_text += '.';
      }
    } else if (c_trigger) {
      if (!c_text.contains('.')) {
        c_text += '.';
      }
    } else if (d_trigger) {
      if (!d_text.contains('.')) {
        d_text += '.';
      }
    }
    notifyListeners();
  }

  void AC_press() {
    if (longtap == false) {
      if (a_trigger) {
        a_text = '0';
      } else if (b_trigger) {
        b_text = '0';
      } else if (c_trigger) {
        c_text = '0';
      } else if (d_trigger) {
        d_text = '0';
      }
    } else {
      a_text = '0';
      b_text = '0';
      c_text = '0';
      d_text = '0';
      longtap = false;
    }

    notifyListeners();
  } // BUTTON OF TOTAL DELETE SELECTED VARIABLE (AC Button)

  void setlongtap_ac() {
    if (longtap == true) {
      longtap = false;
    } else {
      longtap = true;
    }
    notifyListeners();
  }

  double x1 = 0;
  double x2 = 0;
  double x3 = 0;
  double x4 = 0;
  int kx = 0;
  int kv = 0;

  void decision_ur() {
    a = double.parse(a_text);
    b = double.parse(b_text);
    c = double.parse(c_text);
    d = double.parse(d_text);
    if (urv2 == true) {
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
        x2 = -b / a;
      }
      if (d > 0) {
        double D = sqrt(d);
        x1 = (d - b) / (2 * a);
        x2 = (-d - b) / (2 * a);
        kx = 2;
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
    if (urv3 == true) {
      kv = 1;
    }
    if (urv4 == true) {
      kv = 2;
    }
    notifyListeners();
  }
}

/*class decision_urv extends ChangeNotifier {

}
*/
