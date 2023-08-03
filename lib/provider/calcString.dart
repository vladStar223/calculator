import 'dart:math';
import 'package:advance_math/advance_math.dart';
import 'package:calculator/provider/arc_sin_cos_tan.dart';
import 'package:calculator/provider/sin_cos_tan.dart';
import 'package:calculator/screens/result.dart';
import 'package:petitparser/petitparser.dart';

Parser buildParser() {
  final builder = ExpressionBuilder();
  final decide = Decide_angel();
  final decide_arc = Decide_angel_arc();
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
  builder.group()
    ..prefix(string("tan").trim(), (op, a) => decide.tan_1(a))
    ..prefix(string("cos").trim(), (op, a) => decide.cos_1(a))
    ..prefix(string("sin").trim(), (op, a) => decide.sin_1(a));
  builder.group()
    ..prefix(string("arctan").trim(), (op, a) => decide_arc.arctan_1(a))
    ..prefix(string("arccos").trim(), (op, a) => decide_arc.arccos_1(a))
    ..prefix(string("arcsin").trim(), (op, a) => decide_arc.arcsin_1(a));
  builder.group()
    ..prefix(char('√').trim(), (op, a) => sqrt(a))
    ..prefix(char('-').trim(), (op, a) => -a);
  builder.group()..postfix(char("!").trim(), (a, op) => factorial_search(a));
  builder.group().right(char('^').trim(), (a, op, b) => pow(a, b));
  builder.group()
    ..left(char('%').trim(), (a, op, b) => a * (b / 100))
    ..left(char('√').trim(), (a, op, b) => sqrt(a) * b)
    ..left(char('×').trim(), (a, op, b) => a * b)
    ..left(char('÷').trim(), (a, op, b) => a / b);
  builder.group()
    ..left(char('+').trim(), (a, op, b) => a + b)
    ..left(char('-').trim(), (a, op, b) => a - b);
  return builder.build().end();
}

dynamic calcString(String text) {
  final parser = buildParser();
  final input = text;
  try {
    final result = parser.parse(input);
    if (result.isSuccess) {
      return result.value.toDouble();
    } else {
      return double.parse(text);
    }
  } catch (e) {
    print("Возникло исключение $e");
    return "ошибка";
  }
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
  print(rad_deg);
}
