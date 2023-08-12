import 'package:flutter/widgets.dart';

import '../../domain/entity/bot.dart';

class Get_data extends ChangeNotifier {
  bool get_data = false;
  var _valutes = <Valute>[];
  void get_valutes() {
    get_data = true;
  }

  void set_valutes(var x) {
    _valutes = x;
    notifyListeners();
  }
}
