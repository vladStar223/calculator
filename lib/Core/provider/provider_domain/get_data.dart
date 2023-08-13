import 'package:calculator/Core/domain/api_clients/api_clients.dart';
import 'package:calculator/Core/domain/entity/post.dart';
import 'package:flutter/widgets.dart';

import '../../domain/entity/valute.dart';

class Get_data extends ChangeNotifier {
  bool get_data = true;
  String state_data = "Состояние";
  var valutes = <Valute>[];
  var name_code = [];
  var x = ApiClient();
  List<Valute> get valute => List.unmodifiable(valutes);
  Future<void> get_post() async {
    final valuteResponse = await x.fetchPost();
    if (valuteResponse == "Данные не получены") {
      state_data = "ошибка";
    } else {
      valutes.addAll((valuteResponse.valute.values as Iterable<Valute>)
          .toList(growable: false));
      name_code.addAll((valuteResponse.valute.keys as Iterable<String>)
          .toList(growable: false));
      get_data = false;
      state_data = "Данные получены";
    }

    //print(name_code[0]);
    //print(valutes[0].Name);
    notifyListeners();
  }
}
