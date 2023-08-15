import 'dart:ui';

import 'package:calculator/Core/provider/provider_domain/change_valute.dart';
import 'package:calculator/Core/provider/provider_domain/seach.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/domain/entity/valute.dart';
import '../../theme/color/theme.dart';

class Choose_valute extends StatefulWidget {
  final Change_valute dataSet;
  final List<Valute> valutes;
  final AppColor AppColors;
  final Seach seachs;
  const Choose_valute({
    required this.dataSet,
    required this.valutes,
    required this.AppColors,
    required this.seachs,
  });

  @override
  State<Choose_valute> createState() => _Choose_valuteState();
}

class _Choose_valuteState extends State<Choose_valute> {
  TextStyle textStyle = TextStyle(fontFamily: "Nokora", color: Colors.black);

  get text => null;
  //print
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          insetPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0))),
          title: Center(
              child: Text(
            "Выбор валюты",
            style: TextStyle(fontFamily: "Nokora", color: Colors.black),
          )),
          content: Container(
            height: 53.h,
            width: 75.w,
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Введите название валюты",
                        filled: true),
                    onChanged: (text) {
                      print(widget.seachs.valute_name);
                    },
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 3),
                  child: Container(
                    height: 47.h,
                    width: 75.w,
                    child: Builder(builder: (context) {
                      return ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: widget.valutes.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        widget.dataSet.set_valute(index);
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(widget.valutes[index].Name,
                                          style: TextStyle(
                                              fontFamily: "Nokora",
                                              color:
                                                  widget.AppColors.textcolor2,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 20.sp)),
                                    )
                                  ],
                                ));
                          });
                    }),
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
                          color: Colors.black,
                          fontSize: 6.w,
                          fontFamily: "Nokora"),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            )
          ],
        ),
      ),
    );
  }
}
