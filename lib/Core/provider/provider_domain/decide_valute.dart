import 'package:calculator/Core/domain/entity/valute.dart';
import 'package:calculator/Core/provider/provider_class.dart';
import 'package:flutter/cupertino.dart';

class Decide_valute extends ChangeNotifier implements Input_number {
  List<String> valute_cofficients = [
    "0",
    "0",
    "0",
    "0",
  ];
  late List<Valute> valute;
  late List<int> index;
  late List<bool> type_valute = [false, false, false, false];
  void set_valute(var x) {
    valute = x;
  }

  void set_index(var x) {
    index = x;
  }

  void set_false() {
    type_valute[0] = false;
    type_valute[1] = false;
    type_valute[2] = false;
    type_valute[3] = false;
  }

  void set_type_one() {
    set_false();
    type_valute[0] = true;
    notifyListeners();
  }

  void set_type_two() {
    set_false();
    type_valute[1] = true;
    notifyListeners();
  }

  void set_type_three() {
    set_false();
    type_valute[2] = true;
    notifyListeners();
  }

  void set_type_four() {
    set_false();
    type_valute[3] = true;
    notifyListeners();
  }

  double get_RUB(int x_v) {
    print(valute[index[x_v]].Name);
    double x = valute[index[x_v]].Value.toDouble() *
        double.parse(valute_cofficients[x_v]);
    // функция переводит от числа в массиве в рубли
    print(x);
    return x;
    print(valute[14].Name);
    x = x / valute[14].Value.toDouble();
    print(x);
  }

  String text = '0';

  @override
  void ac_press() {
    valute_cofficients[0] = '0';
    valute_cofficients[1] = '0';
    valute_cofficients[2] = '0';
    valute_cofficients[3] = '0';
    notifyListeners();
    // TODO: implement ac_press
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
    }
    determing_to_true_trigger_end(text);
    notifyListeners();
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
    // TODO: implement delete_press
  }

  @override
  void determing_to_true_trigger_end(String text) {
    if (type_valute[0]) {
      valute_cofficients[0] = text;
    } else if (type_valute[1]) {
      valute_cofficients[1] = text;
    } else if (type_valute[2]) {
      valute_cofficients[2] = text;
    } else if (type_valute[3]) {
      valute_cofficients[3] = text;
    }
    notifyListeners();
    // TODO: implement determing_to_true_trigger_end
  }

  @override
  String determing_to_true_trigger_start() {
    if (type_valute[0]) {
      return valute_cofficients[0];
    } else if (type_valute[1]) {
      return valute_cofficients[1];
    } else if (type_valute[2]) {
      return valute_cofficients[2];
    } else if (type_valute[3]) {
      return valute_cofficients[3];
    }
    return '';
    // TODO: implement determing_to_true_trigger_start
    throw UnimplementedError();
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
    // TODO: implement nums_press
  }

  @override
  void resuilt() {
    //valute_cofficients[0] = 0.toString();
    //valute_cofficients[1] = 0.toString();
    //valute_cofficients[2] = 0.toString();
    //valute_cofficients[3] = 0.toString();
    // TODO: implement resuilt
  }
}
