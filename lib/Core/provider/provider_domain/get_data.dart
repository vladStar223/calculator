import 'package:calculator/Core/domain/entity/post.dart';
import 'package:flutter/widgets.dart';

import '../../domain/entity/bot.dart';

class Get_data extends ChangeNotifier {
  bool get_data = true;
  String state_data = "Состояние";
  var _valutes = <Valute>[];
  void get_valutes() {
    get_data = true;
  }

  void set_valutes(var x) {
    _valutes = x;
    notifyListeners();
  }
}
