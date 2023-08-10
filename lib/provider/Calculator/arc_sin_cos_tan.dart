import 'dart:math';

import 'package:angles/angles.dart';

class Decide_angel_arc {
  // чат отвечает за решение синус косинуса
  dynamic arcsin_1(dynamic a) {
    double n = a;
    var t1 = a;
    dynamic x = Angle.asin(n);
    x = x.toString();
    x = x.substring(0, x.length - 1);
    t1 = double.parse(x);
    return t1;
  }

  dynamic arccos_1(dynamic a) {
    double n = a;
    var t1 = a;
    dynamic x = Angle.acos(n);
    x = x.toString();
    x = x.substring(0, x.length - 1);
    t1 = double.parse(x);
    return t1;
  }

  dynamic arctan_1(dynamic a) {
    double n = a;
    var t1 = a;
    dynamic x = Angle.atan(n);
    x = x.toString();
    x = x.substring(0, x.length - 1);
    t1 = double.parse(x);
    return t1;
  }
}
