import 'package:flutter/cupertino.dart';

import '../../domain/entity/valute.dart';

class Seach extends ChangeNotifier {
  late List<Valute> valute;
  late List<String> valute_name = [];
  late List<String> valute_name_small = [];
  late List<int> index;
  bool seach = false;
  void set_value(var valuteName2) {
    valute = valuteName2;
    valute_name.clear();
    valute_name_small.clear();
    set_valute_name();
  }

  void set_valute_name() {
    int i = 0;
    while (i < valute.length) {
      valute_name.add(valute[i].Name);
      i = i + 1;
    }
    set_valute_name_small();
  }

  void set_valute_name_small() {
    int i = 0;
    while (i < valute_name.length) {
      valute_name_small.add(valute_name[i].toLowerCase());
      i = i + 1;
    }
  }

  void seach_string(String x) {
    String t = x;
    var p = List<int>.generate(valute.length, (i) => 0);
    int j = 0;
    int i = 1;
    while (i < t.length) {
      if (t[j] == t[i]) {
        p[i] = j + 1;
        i += 1;
        j += 1;
      } else {
        if (j == 0) {
          p[i] = 0;
          i += 1;
        } else {
          j = p[j - 1];
        }
      }
    }
    print(p);
    String a = "1234";
    int m = t.length;
    int n = a.length;
    i = 0;
    j = 0;
    while (i < n) {
      if (a[i] == t[j]) {
        i += 1;
        j += 1;
        if (j == m) {
          print("образ найден");
          break;
        }
      } else {
        if (j > 0) {
          j = p[j - 1];
        } else {
          i += 1;
        }
      }
    }
    if (i == n && j != m) {
      print("образ не найден");
    }
  }
}
