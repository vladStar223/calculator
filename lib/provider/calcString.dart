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
    var angle = Angle.fromDegrees(n);
    t1 = angle.sin();
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
    }
  } else {
    t1 = sin(a);
  }
  return t1;
}
