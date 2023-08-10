import 'package:advance_math/advance_math.dart';

import 'calcString.dart';

class Decide_angel {
  // чат отвечает за решение синус косинуса
  dynamic sin_1(dynamic a) {
    var n = a;
    var t1;

    if (rad_deg == true) {
      if (n == 0) {
        t1 = sin0;
      } else if (n == 30) {
        t1 = sin30;
      } else if (n == 45) {
        t1 = sin45;
      } else if (n == 90) {
        t1 = sin90;
      } else if (n == 180) {
        t1 = 0;
      } else {
        var angle = Angle.fromDegrees(n);
        t1 = angle.sin();
      }
    } else {
      t1 = sin(a);
    }
    return t1;
  }

  dynamic cos_1(dynamic a) {
    var n = a;
    var t1;
    if (rad_deg == true) {
      if (n == 0) {
        t1 = cos0;
      } else if (n == 30) {
        t1 = cos30;
      } else if (n == 45) {
        t1 = cos45;
      } else if (n == 90) {
        t1 = cos90;
      } else if (n == 180) {
        t1 = -1;
      } else {
        var angle = Angle.fromDegrees(n);
        t1 = angle.cos();
      }
    } else {
      t1 = cos(a);
    }
    return t1;
  }

  dynamic tan_1(dynamic a) {
    var n = a;
    var t1;
    if (rad_deg == true) {
      if (n == 0) {
        t1 = tan0;
      } else if (n == 30) {
        t1 = tan30;
      } else if (n == 60) {
        t1 = tan60;
      } else {
        var angle = Angle.fromDegrees(n);

        t1 = angle.tan();
        print(t1);
      }
    } else {
      t1 = tan(a);
    }
    return t1;
  }
}
