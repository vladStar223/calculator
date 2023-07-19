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
      d_trigger = false, // триггеры коэффицентов

      first_anim_screen = true,
      second_anim_screen = false,
      third_anim_screen = false,
      resuilt_anim_screen = false, // БУЛЬКИ ДЛЯ АНИМАЦИЙ

      enter_block = false, // запрещает ввод с клавы кода открыто окно результата

      first_resuilt_anim_screen = false,
      second_resuilt_anim_screen = false,
      third_resuilt_anim_screen = false; //variables for anim resuilts


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

  void Switch_from_D_to_C(){
    if (d_trigger) {
      c_trigger = true;
      d_trigger = false;
    }
 //переключает активный коэф с D на C если был переход с ур-ем х3 на остальные ур-я
  } //часто повторялись, сделал отдельную функцию

  void All_resuilt_bool_to_false(){
    first_resuilt_anim_screen = false;
    second_resuilt_anim_screen = false;
    third_resuilt_anim_screen = false;
  } //часто повторялись, сделал отдельную функцию

  String Determing_to_true_trigger_start(){
     if (a_trigger) {
       return a_text;
     } else if (b_trigger) {
       return b_text;
     } else if (c_trigger) {
       return c_text;
     } else if (d_trigger) {
       return d_text;
     }
     return '';
   } //часто повторялись, сделал отдельную функци
   
  void Determing_to_true_trigger_end(String text) {
    if (a_trigger) {
      a_text = text;
    } else if (b_trigger) {
      b_text = text;
    } else if (c_trigger) {
      c_text = text;
    } else if (d_trigger) {
      d_text = text;
    }
  } //часто повторялись, сделал отдельную функци


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
    enter_block = false;

    first_anim_screen = true;
    second_anim_screen = false;
    third_anim_screen = false;

    All_resuilt_bool_to_false();
    Switch_from_D_to_C();
    savemode(0);
    zerourv();

    notifyListeners();
  } //переключение на экран ввода х2

  void Animated_second_screen() {
    enter_block = false;

    first_anim_screen = false;
    second_anim_screen = true;
    third_anim_screen = false;

    All_resuilt_bool_to_false();
    savemode(1);
    zerourv();

    notifyListeners();
  } //переключение на экран ввода х3

  void Animated_third_screen() {
    enter_block = false;

    first_anim_screen = false;
    second_anim_screen = false;
    third_anim_screen = true;

    All_resuilt_bool_to_false();
    Switch_from_D_to_C();
    savemode(2);
    zerourv();

    notifyListeners();
  } //переключение на экран ввода х4


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
    enter_block = true;

    if (first_anim_screen){
      first_resuilt_anim_screen = true;
    } else if (second_anim_screen){
      second_resuilt_anim_screen = true;
    } else if (third_anim_screen) {
      third_resuilt_anim_screen = true;
    } // проверка какой именно экран результата открывать

    decision_ur();
    notifyListeners();
  } //функция  кнопки  '='


  void Nums_press(String enternumber) {
    if (!enter_block) {
      String text = Determing_to_true_trigger_start();

      if (enternumber == '0' && text == '0'){
        return;
      } else if (text.length == 1 && text[0] == '0'){
        text = '+';
      }
      if (text.length < 12) {
        text += enternumber;
      }

      Determing_to_true_trigger_end(text);
    }
    notifyListeners();
  }

  void Delete_press(){
    if (!enter_block){
      String text = Determing_to_true_trigger_start();

      text = text.substring(0,text.length - 1);
      if (text == ''){
        text = '0';
      }
      
      Determing_to_true_trigger_end(text);
    }
    notifyListeners();
  }

  void Minus_press(){
    if (!enter_block){
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
    if (a_text != "-" && a_text != "+") {
      a = double.parse(a_text);
    } else {
      if (a_text == "-") {
        a = -1;
        a_text = "-";
      }
      if (a_text == "+") {
        a = 1;
        a_text = "-";
      }
    }
    if (b_text != "-" && b_text != "+") {
      b = double.parse(b_text);
    } else {
      if (b_text == "-") {
        b = -1;
        b_text = "-1";
      }
      if (b_text == "+") {
        b = 1;
        b_text = "+1";
      }
    }
    if (c_text != "-" && c_text != "+") {
      c = double.parse(c_text);
    } else {
      if (c_text == "-") {
        c = -1;
        c_text = "-1";
      }
      if (c_text == "+") {
        c = 1;
        c_text = "+1";
      }
    }
    if (d_text != "-" && d_text != "+") {
      d = double.parse(d_text);
    } else {
      if (d_text == "-") {
        d = -1;
        d_text = "-1";
      }
      if (d_text == "+") {
        d = 1;
        d_text = "+1";
      }
    }
  }

  void decision_ur() {
    check_int();
    if (urv2 == true) {
      urvshow = "${a_text} x² ${b_text} x ${c_text} = 0";
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
    if (urv3 == true) {
      urvshow = "${a_text} x³ ${b_text} x² ${c_text} + ${d_text} = 0";
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
    if (urv4 == true) {
      urvshow = "${a_text} x⁴ ${b_text} x² ${c_text}  = 0";
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
}

/*class decision_urv extends ChangeNotifier {

}
*/
