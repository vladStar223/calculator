import 'package:flutter/cupertino.dart';

import '../provider_class.dart';
import 'package:advance_math/advance_math.dart';

class Input_log extends ChangeNotifier implements Input_number {
  String result = "= 0";
  List<String> text_in_cofficients = [
    "1",
    "1",
  ];
  double a = 2;
  double b = 2;
  List<bool> active_coefficient = [
    true,
    false,
  ];
  @override
  void ac_press() {
    text_in_cofficients[0] = '0';
    text_in_cofficients[1] = '0';
    notifyListeners();
    // TODO: implement ac_press
  }

  void minus() {
    String text = determing_to_true_trigger_start();

    if (text == '0') {
      text = '-';
    } else if (text == '-') {
      text = '+';
    } else if (text == '+') {
      text = '-';
    } else {
      if (text[0] == '+') {
        text = '-' + (text.substring(1, text.length));
      } else if (text[0] == '-') {
        text = '+' + (text.substring(1, text.length));
      }
    }

    determing_to_true_trigger_end(text);
    resuilt();
    notifyListeners();
  }

  @override
  void comma_press() {
    String text = determing_to_true_trigger_start();

    if (!text.contains('.')) {
      if (text[0] == '-' || text[0] == '+') {
        text += '.';
      } else {
        text = '+' + text + '.';
      }
      determing_to_true_trigger_end(text);
      notifyListeners();
    }
    // TODO: implement comma_press
  }

  @override
  void delete_press() {
    String text = determing_to_true_trigger_start();

    text = text.substring(0, text.length - 1);
    if (text == '') {
      text = '0';
    }

    determing_to_true_trigger_end(text);
    notifyListeners();
  } // TODO: implement delete_press

  @override
  String determing_to_true_trigger_start() {
    if (active_coefficient[0]) {
      return text_in_cofficients[0];
    } else if (active_coefficient[1]) {
      return text_in_cofficients[1];
    }
    return '';
  }

  @override
  void determing_to_true_trigger_end(String text) {
    // TODO: implement Determing_to_true_trigger_end
    if (active_coefficient[0]) {
      text_in_cofficients[0] = text;
    } else if (active_coefficient[1]) {
      text_in_cofficients[1] = text;
    }
    notifyListeners();
  }

  @override
  void nums_press(String enternumber) {
    String text = determing_to_true_trigger_start();
    if (text == "0") {
      text = enternumber;
    } else {
      text += enternumber;
    }

    determing_to_true_trigger_end(text);
    resuilt();
    notifyListeners();
  }
  // TODO: implement nums_press

  @override
  void resuilt() {
    a = double.parse(text_in_cofficients[0]);
    b = double.parse(text_in_cofficients[1]);
    try {
      result = log(b, a).toString();
    } catch (e) {
      result = "невозможно";
    }
    notifyListeners();
    // TODO: implement resuilt
  }

  void a_trigger() {
    active_coefficient[0] = true;
    active_coefficient[1] = false;
    notifyListeners();
  } // переключение на активный ввод

  void b_trigger() {
    active_coefficient[0] = false;
    active_coefficient[1] = true;
    notifyListeners();
  }
}
