import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../input_class.dart';

class Decision_urv extends ChangeNotifier {
  late final Input_number_equations input_number_Equations;
  late List<String> text_in_cofficients;
  late var urv;
  Decision_urv(this.input_number_Equations);
  get sys_v async {
    text_in_cofficients = input_number_Equations.text_in_cofficients;
    urv = input_number_Equations.active_resuilt_screen;
  }

  // передает необходимые данные для решения  значение коэфицентов и состояние какое уравнение считать
  double x1 = 0;
  String x2 = "0.0";
  String x3 = "0.0";
  double x4 = 0;
  bool bex = false;
  int kx = 0;
  int kv = 0;
  String urvshow =
      "0"; // отвечает за отображение полного уравнения в экране вывода
  double D = 0;
  late List<String> x;
  double a = 0.0, b = 0.0, c = 0.0, d = 0.0;
  Future<void> check_int() async {
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

  Future<void> decision_ur() async {
    await check_int();
    if (urv[0] == true) {
      urvshow =
          "${text_in_cofficients[0]} x² ${text_in_cofficients[1]} x ${text_in_cofficients[2]} = 0";
      decision_quadratic();
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
      decision_biquadrate();
      notifyListeners();
    }
  }

  void decision_biquadrate() {
    d = (b * b) - 4 * a * c;
    if (a == 0) {
      x1 = -c / b;
      x1 = sqrt(x1) * 1;
      x2 = (sqrt(x1) * -1).toString();
      bex = true;
    }
    if (b == 0) {
      x1 = -c / b;
      x1 = sqrt(x1);
      x1 = sqrt(x1) * 1;
      x2 = (sqrt(x1) * -1).toString();
      bex = true;
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
      bex = true;
    }
    if (d == 0) {
      x1 = (-1 * b) / (2 * a);
      x1 = sqrt(x1) * 1;
      x2 = (x1 * -1).toString();
      bex = true;
    }
    if (d < 0) {
      bex = false;
    }
    if (a == 0 && c == 0) {
      x1 = 0;
      x1 = sqrt(x1) * 1;
      x2 = (sqrt(x1) * -1).toString();
      bex = true;
    }
    if (b == 0 && c == 0) {
      x1 = 0;
      bex = true;
    }
    if (a == 0 && b == 0) {
      kx = 0;
      bex = false;
    } // не рабочие решения
    if (a == 0 && b == 0 && c == 0) {
      kx = 0;
      bex = false;
      if (kDebugMode) {
        print("ошибка");
      }
    }
  }

  void decision_cubic(
    double a,
    double b,
    double c,
  ) {
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

  void decision_quadratic() {
    d = (b * b) - (4 * a * c);
    if (a == 0) {
      x1 = -c / b;
      bex = true;
    }
    if (b == 0) {
      x1 = -c / b;
      x1 = sqrt(x1);
      bex = true;
    }
    if (c == 0) {
      x1 = 0;
      x2 = (-b / a).toString();
      bex = true;
    }
    if (d > 0) {
      D = sqrt(d);
      x1 = ((-b + D) / (2 * a));
      x2 = ((-b - D) / (2 * a)).toString();
      bex = true;
    }
    if (d == 0) {
      x1 = (-1 * b) / (2 * a);
      x1 = sqrt(x1) * 1;
      x2 = (x1 * -1).toString();
      bex = true;
    }
    if (d < 0) {
      bex = false;
    }
    if (a == 0 && c == 0) {
      x1 = 0;
      bex = true;
    }
    if (b == 0 && c == 0) {
      x1 = 0;
      bex = true;
    }
    if (a == 0 && b == 0) {
      kx = 0;
      bex = false;
    } // не рабочие решения
    if (a == 0 && b == 0 && c == 0) {
      kx = 0;
      bex = false;
      if (kDebugMode) {
        print("ошибка");
      }
    }
  }

  void check_x() {}
}
