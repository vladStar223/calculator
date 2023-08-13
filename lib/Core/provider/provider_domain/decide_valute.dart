import 'package:calculator/Core/provider/provider_class.dart';
import 'package:flutter/cupertino.dart';

class Decide_valute extends ChangeNotifier implements Input_number {
  List<String> valute_cofficients = [
    "0",
    "0",
    "0",
    "0",
  ];
  String text = '';
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
