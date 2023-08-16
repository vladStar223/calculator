import 'package:calculator/main.dart';
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
    index = List<int>.generate(valute.length, (i) => i);
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

  bool seach_string(String text, String valute) {
    String t = text;
    String a = valute;
    var p = List<int>.generate(30 + 1, (i) => 0);
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
    //print(p);
    int m = t.length;
    int n = a.length;
    i = 0;
    j = 0;
    while (i < n) {
      if (a[i] == t[j]) {
        i += 1;
        j += 1;
        if (j == m) {
          return true;
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
      return false;
    }
    return false;
  }

  void seach_valute(String text) {
    int i = 0;
    int k = 0;
    //Stopwatch stopwatch = new Stopwatch()..start();
    if (text.isEmpty == false) {
      if (text[0].toUpperCase() == text[0]) {
        i = 0;
        while (i < valute_name.length) {
          bool x = seach_string(text, valute_name[i].trim());
          if (x == true) {
            index[k] = i;
            k = k + 1;
          }
          i = i + 1;
        }
      } else {
        i = 0;
        while (i < valute_name_small.length) {
          bool x = seach_string(text, valute_name_small[i].trim());
          if (x == true) {
            index[k] = i;
            k = k + 1;
          }
          i = i + 1;
        }
      }
    } else {
      index.clear();
      index = List<int>.generate(valute.length, (i) => i);
    }
    seach = false;
    //print(index);
    //print('doSomething() executed in ${stopwatch.elapsed}');
    notifyListeners();
    //print(index);
  }
}
