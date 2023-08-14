import 'dart:ui';

import 'package:calculator/Core/provider/provider_domain/change_valute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../theme/color/theme.dart';

class Choose_valute extends StatefulWidget {
  final Change_valute dataSet;

  const Choose_valute({super.key, required this.dataSet});

  @override
  State<Choose_valute> createState() => _Choose_valuteState();
}

class _Choose_valuteState extends State<Choose_valute> {
  TextStyle textStyle = TextStyle(fontFamily: "Nokora", color: Colors.black);

  TextStyle textStyle2 =
      TextStyle(fontFamily: "Nokora", color: Colors.black, fontSize: 20);

  late List<Icon> icon_Country;
  //print
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      title: Center(
          child: Text(
        "Выбор валюты",
        style: textStyle,
      )),
      content: Container(
        height: 50.h,
        width: 75.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        )),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Введите название валюты",
                  filled: true),
            ),
            Container(
              height: 10.h,
              width: 75.w,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  Text(widget.dataSet.index[0].toString(),
                      style: TextStyle(fontSize: 10)),
                  Text("Alice", style: TextStyle(fontSize: 10)),
                  Text("Bob", style: TextStyle(fontSize: 10)),
                  Text("Sam", style: TextStyle(fontSize: 10)),
                  Text("Kate", style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 6.h,
              width: 75.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                Radius.circular(70.0),
              )),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black12,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "Закрыть",
                  style: TextStyle(
                      color: Colors.black, fontSize: 6.w, fontFamily: "Nokora"),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
