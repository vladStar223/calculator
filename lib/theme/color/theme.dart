import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class AppColor extends ChangeNotifier {
  static const type_theme_Key = 'type_theme';
  late int type = 1;
  Color color_of_border = Colors.blue; //цвет рамки для полей ввода
  Color transparent = Colors.transparent; // Нормальное состояние
  Color fon = HexColor.fromHex('242933'); // фон
  Color white = HexColor.fromHex('EEEEEE');
  Color output = HexColor.fromHex('EEEEEE'); // меню вывода
  Color textcolorfortop = HexColor.fromHex('EEEEEE');
  Color buttoncolor1 = HexColor.fromHex('363E53');
  Color buttoncolor2 = HexColor.fromHex('CBCBCB'); //цифры // кнопки
  Color textcolor = HexColor.fromHex('EEEEEE');
  Color textcolor2 = HexColor.fromHex('585858');
  @override
  Future<void> initType() async {
    type = (await _getType_theme())!;
    notifyListeners();
    print("0");
  }

  Future<void> Change_color() async {
    type = (await _getType_theme())!;
    if (type == 2) {
      type = 1;
      fon = HexColor.fromHex('242933'); // фон
      white = HexColor.fromHex('EEEEEE');
      output = HexColor.fromHex('EEEEEE'); // меню вывода
      textcolorfortop = HexColor.fromHex('EEEEEE');
      buttoncolor1 = HexColor.fromHex('363E53');
      buttoncolor2 = HexColor.fromHex('CBCBCB'); //цифры // кнопки
      textcolor = HexColor.fromHex('EEEEEE');
      textcolor2 = HexColor.fromHex('585858');
    } else {
      type = 2;
      fon = HexColor.fromHex('EEEEEE'); // фон
      output = HexColor.fromHex('EEEEEE');
      textcolorfortop = HexColor.fromHex('585858'); // меню вывода
      white = HexColor.fromHex('585858');
      buttoncolor1 = HexColor.fromHex('73D5DB'); // для  спец кнопок
      buttoncolor2 = HexColor.fromHex('E1E1E1'); //цифры // кнопки
      textcolor = HexColor.fromHex('0C6EA6');
      textcolor2 = HexColor.fromHex('585858');
    }
    if (type == 3) {
      fon = HexColor.fromHex('EEEEEE'); // фон
      white = HexColor.fromHex('EEEEEE'); // меню вывода
      textcolorfortop = HexColor.fromHex('585858');
      buttoncolor1 = HexColor.fromHex('363E53');
      buttoncolor2 = HexColor.fromHex('E1E1E1'); //цифры // кнопки
      textcolor = HexColor.fromHex('EEEEEE');
      textcolor2 = HexColor.fromHex('585858');
    }
    notifyListeners();
    await _setType_theme();
  }

  Future _setType_theme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(type_theme_Key, type);
  }

  Future<int?> _getType_theme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(type_theme_Key) ?? 0;
  }
}
// как его сделать
