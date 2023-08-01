import 'dart:math';
import 'package:petitparser/petitparser.dart';
import 'package:advance_math/advance_math.dart';

Parser buildParser() {
  final builder = ExpressionBuilder();
  builder.group()
    // ignore: deprecated_member_use
    ..primitive((pattern('+-').optional() &
            digit().plus() &
            (char('.') & digit().plus()).optional() &
            (pattern('eE') & pattern('+-').optional() & digit().plus())
                .optional())
        .flatten('number expected')
        .trim()
        .map(num.tryParse))
    ..wrapper(
        char('(').trim(), char(')').trim(), (left, value, right) => value);
  builder.group()
    ..prefix(string("ln").trim(), (op, a) => log(a))
    ..prefix(string("lg").trim(), (op, a) => log10(a));
  builder.group()..prefix(string("sin").trim(), (op, a) => sin_1(a));
  builder.group()
    ..prefix(char('√').trim(), (op, a) => sqrt(a))
    ..prefix(char('-').trim(), (op, a) => -a);
  builder.group().postfix(char("!").trim(), (a, op) => factorial_search(a));
  builder.group().right(char('^').trim(), (a, op, b) => pow(a, b));
  builder.group()
    ..left(char('√').trim(), (a, op, b) => sqrt(a) * b)
    ..left(char('×').trim(), (a, op, b) => a * b)
    ..left(char('÷').trim(), (a, op, b) => a / b);
  builder.group()
    ..left(char('+').trim(), (a, op, b) => a + b)
    ..left(char('-').trim(), (a, op, b) => a - b);
  return builder.build().end();
}

double calcString(String text) {
  final parser = buildParser();
  final input = text;
  final result = parser.parse(input);
  if (result.isSuccess)
    return result.value.toDouble();
  else
    return double.parse(text);
}

dynamic factorial_search(dynamic a) {
  var n = a;
  var i = 1;
  var f = 1;
  if (n > 64) {
    throw "переполнение типа";
  } else {
    if (n < 2) {
      return i;
    } else {
      return n * factorial_search(n - 1);
    }
  }
}

var rad_deg = true;
void get_rad_deg(var x) {
  rad_deg = x;
}

dynamic sin_1(dynamic a) {
  var n = a;
  var t1;
  if (rad_deg = true) {
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
  if (rad_deg = true) {
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
  if (rad_deg = true) {
    if (n == 0) {
      t1 = tan0;
    } else if (n == 30) {
      t1 = tan30;
    } else if (n == 60) {
      t1 = tan60;
    } else {
      var angle = Angle.fromDegrees(n);
      t1 = angle.tan();
    }
  } else {
    t1 = tan(a);
  }
  return t1;
}
