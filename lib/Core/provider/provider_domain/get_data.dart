import 'dart:convert';

import 'package:calculator/Core/domain/api_clients/api_clients.dart';
import 'package:calculator/Core/domain/entity/post.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entity/valute.dart';

class Get_data extends ChangeNotifier {
  static const save_valute_Key = 'save_post';
  bool get_data = true;
  String state_data = "Информация о данных";
  var valutes = <Valute>[];
  var name_code = [];
  var x = ApiClient();
  List<Valute> get valute => List.unmodifiable(valutes);
  Future<void> get_post() async {
    final valuteResponse = await x.fetchPost();
    if (valuteResponse == "Данные не получены") {
      state_data = "Данные не получены";
    } else {
      valutes.clear();
      name_code.clear();
      valutes.addAll((valuteResponse.valute.values as Iterable<Valute>)
          .toList(growable: false));
      name_code.addAll((valuteResponse.valute.keys as Iterable<String>)
          .toList(growable: false));
      get_data = false;
      state_data = "Данные получены";
      _setPost(valuteResponse);
    }

    //print(name_code[0]);
    //print(valutes[0].Name);
    notifyListeners();
  }

  Future _setPost(dynamic valuteResponse) async {
    final prefs = await SharedPreferences.getInstance();
    final set_valutes = json.encode(valuteResponse);
    prefs.setString(save_valute_Key, set_valutes);
  }

  Future<String> getValutes_from_Post() async {
    final prefs = await SharedPreferences.getInstance();
    final get_valutes = prefs.getString(save_valute_Key);
    valutes.clear();
    name_code.clear();
    if (get_valutes == null)
      return "0";
    else {
      final get_v = Post.fromJson(json.decode(get_valutes));
      valutes.addAll(
          (get_v.valute.values as Iterable<Valute>).toList(growable: false));
    }
    getName_code_from_Valute();
    return '1';

    //return prefs.getInt(save_valute_Key) ?? 0;
  }

  //отвечает за получение класса поста
  Future<void> getName_code_from_Valute() async {
    final prefs = await SharedPreferences.getInstance();
    final get_valutes = prefs.getString(save_valute_Key);
    if (get_valutes == null)
      return null;
    else {
      final get_v = Post.fromJson(json.decode(get_valutes));
      name_code.addAll(
          (get_v.valute.keys as Iterable<String>).toList(growable: false));
    }
    notifyListeners();
    //return prefs.getInt(save_valute_Key) ?? 0;
  }
  //отвечает за получение название кодов валют
}
