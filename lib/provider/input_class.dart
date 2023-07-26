import 'package:calculator/provider/provider_class.dart';
import 'package:flutter/cupertino.dart';

import 'calcString.dart';

class Input_number_equations extends ChangeNotifier implements Input_number {
  @override
  void ac_press() {
    // TODO: implement ac_press
  }

  @override
  void comma_press() {
    // TODO: implement comma_press
  }

  @override
  void delete_press() {
    // TODO: implement delete_press
  }

  @override
  void determing_to_true_trigger_end(String text) {
    // TODO: implement determing_to_true_trigger_end
  }

  @override
  String determing_to_true_trigger_start() {
    // TODO: implement determing_to_true_trigger_start
    throw UnimplementedError();
  }

  @override
  void nums_press(String enternumber) {
    // TODO: implement nums_press
  }

  @override
  void resuilt() {
    // TODO: implement resuilt
  }
}

// ignore: camel_case_types
class Input_number_calculator extends ChangeNotifier implements Input_number {
  String count = "0";
  String result = "0";
  bool decide = false;
  int text_length = 40; // отвечает за максимальную длинну count
  String determing_to_true_trigger_start() {
    return count;
    notifyListeners();
  }

  void determing_to_true_trigger_end(String text) {
    // TODO: implement Determing_to_true_trigger_end
    count = text;
    notifyListeners();
  }

  /// бла бла бла фунциця [determing_to_true_trigger_end] такая то
  @override
  void minus_press() {
    // TODO: implement Minus_press
    String text = determing_to_true_trigger_start();
    if (text == '0') {
      text = '-';
    } else {
      if (text[text.length - 1] == "+" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%") {
        text = text.substring(0, text.length - 1);
        text += "-";
      } else if (text.length < text_length &&
          text[text.length - 1] != "-" &&
          text[text.length - 1] != ".") {
        text += "-";
      }
    }

    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  void plus_press() {
    String text = determing_to_true_trigger_start();
    if (text == '0') {
      text = '+';
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%") {
        text = text.substring(0, text.length - 1);
        text += "+";
      } else if (text.length < text_length &&
          text[text.length - 1] != "+" &&
          text[text.length - 1] != ".") {
        text += "+";
      }
    }

    determing_to_true_trigger_end(text);
    notifyListeners();
  }

//÷
  void multiplication() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "÷" ||
          text[text.length - 1] == "%") {
        text = text.substring(0, text.length - 1);
        text += "×";
      } else if (text.length < text_length &&
          text[text.length - 1] != "×" &&
          text[text.length - 1] != ".") {
        text += "×";
      }
    }
    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  void division() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "%") {
        text = text.substring(0, text.length - 1);
        text += "÷";
      } else if (text.length < text_length &&
          text[text.length - 1] != "÷" &&
          text[text.length - 1] != ".") {
        text += "÷";
      }
    }
    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  void percent_of_number() {
    String text = determing_to_true_trigger_start();
    if (text == '0' || text == "-" || text == "+") {
    } else {
      if (text[text.length - 1] == "-" ||
          text[text.length - 1] == "+" ||
          text[text.length - 1] == "×" ||
          text[text.length - 1] == "÷") {
        text = text.substring(0, text.length - 1);
        text += "%";
      } else if (text.length < text_length &&
          text[text.length - 1] != "%" &&
          text[text.length - 1] != ".") {
        text += "%";
      }
    }
    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  // проверка числа на правильность
  String check_number(text) {
    if (text[text.length - 1] == "-" ||
        text[text.length - 1] == "×" ||
        text[text.length - 1] == "÷" ||
        text[text.length - 1] == "%" ||
        text[text.length - 1] == "+") {
      return text = text.substring(0, text.length - 1);
    } else {
      return text;
    }
  }

  @override
  void nums_press(String enternumber) {
    // TODO: implement Nums_press
    String text = determing_to_true_trigger_start();
    if (enternumber == '0' && text == '0') {
      text = enternumber;
    } else if (text.length == 1 && text[0] == '0') {
      text = '+';
    }
    if (text.length < text_length) {
      text += enternumber;
    }

    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  @override
  void ac_press() {
    // TODO: implement ac_press
    count = "0";
    notifyListeners();
  }

  @override
  void comma_press() {
    String text = determing_to_true_trigger_start();

    if (text[text.length - 1] != "." &&
        text[text.length - 1] != "-" &&
        text[text.length - 1] != "+" &&
        text[text.length - 1] != "×" &&
        text[text.length - 1] != "деление") {
      text = text + '.';
    } // дописать для всех возможны случаев

    determing_to_true_trigger_end(text);
    notifyListeners();
    // TODO: implement comma_press
  }

  @override
  void delete_press() {
    // TODO: implement delete_press
    String text = determing_to_true_trigger_start();

    text = text.substring(0, text.length - 1);
    if (text == '') {
      text = '0';
    }

    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  void decide_online() {
    String text = determing_to_true_trigger_start();

    determing_to_true_trigger_end(text);
    notifyListeners();
  }

  @override
  void resuilt() {
    // TODO: implement resuilt
    String text = determing_to_true_trigger_start();
    count = calcString(text).toString();
    notifyListeners();
  }

  void setlongtap_ac() {}
}
