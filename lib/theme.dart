import 'package:flutter/material.dart';

extension HexColor on Color {
  /// Строка может иметь формат "aabbcc" или "ffaabbcc" с необязательным префиксом "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Флаг leadingHashSign, отвечающий за наличие знака решетки в начале по умолчанию равен `true`.
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class AppColors1 {
  final Color color = HexColor.fromHex('393E46');
  final Color fon = HexColor.fromHex('393E46'); // фон
  final Color white = HexColor.fromHex('EEEEEE'); // меню вывода
  final Color black = HexColor.fromHex('222831'); // кнопки
  final Color orange = HexColor.fromHex('FD7013'); // значики на кнопке
}

class AppColors44 {
  final Color color = HexColor.fromHex('393E46');
  final Color fon = HexColor.fromHex('242933'); // фон
  final Color white = HexColor.fromHex('EEEEEE'); // меню вывода
  final Color buttoncolor1 = HexColor.fromHex('363E53');
  final Color buttoncolor2 = HexColor.fromHex('CBCBCB'); //цифры // кнопки
  final Color textcolor = HexColor.fromHex('EEEEEE');
  final Color textcolor2 =
      HexColor.fromHex('585858'); // цифры // значики на кнопке
}

class AppColor extends ChangeNotifier {
  int type = 0;
  Color fon = HexColor.fromHex('242933'); // фон
  Color white = HexColor.fromHex('EEEEEE'); // меню вывода
  Color buttoncolor1 = HexColor.fromHex('363E53');
  Color buttoncolor2 = HexColor.fromHex('CBCBCB'); //цифры // кнопки
  Color textcolor = HexColor.fromHex('EEEEEE');
  Color textcolor2 = HexColor.fromHex('585858');
  void Change_color() {
    if (type == 0) {
      type = 1;
      fon = HexColor.fromHex('242933'); // фон
      white = HexColor.fromHex('EEEEEE'); // меню вывода
      buttoncolor1 = HexColor.fromHex('363E53');
      buttoncolor2 = HexColor.fromHex('CBCBCB'); //цифры // кнопки
      textcolor = HexColor.fromHex('EEEEEE');
      textcolor2 = HexColor.fromHex('585858');
    }
    if (type == 1) {
      type = 0;
      fon = HexColor.fromHex('242933'); // фон
      white = HexColor.fromHex('EEEEEE'); // меню вывода
      buttoncolor1 = HexColor.fromHex('363E53');
      buttoncolor2 = HexColor.fromHex('CBCBCB'); //цифры // кнопки
      textcolor = HexColor.fromHex('EEEEEE');
      textcolor2 = HexColor.fromHex('585858');
    }
  }
}
