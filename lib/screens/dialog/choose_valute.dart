import 'package:calculator/Core/provider/Valute/change_valute.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../Core/domain/entity/valute.dart';
import 'package:calculator/Core/provider/Seach/seach.dart';
import 'package:calculator/theme/color/theme.dart';

class ChooseValute extends StatefulWidget {
  final Change_valute dataSet;
  final List<Valute> valutes;
  // ignore: non_constant_identifier_names
  final AppColor AppColors;
  final Seach seachs;
  const ChooseValute({
    super.key,
    required this.dataSet,
    required this.valutes,
    // ignore: non_constant_identifier_names
    required this.AppColors,
    required this.seachs,
  });

  @override
  State<ChooseValute> createState() => _ChooseValuteState();
}

class _ChooseValuteState extends State<ChooseValute> {
  TextStyle textStyle =
      const TextStyle(fontFamily: "Nokora", color: Colors.black);

  get text => null;
  //print
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          insetPadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0))),
          title: const Center(
              child: Text(
            "Выбор валюты",
            style: TextStyle(fontFamily: "Nokora", color: Colors.black),
          )),
          content: SizedBox(
            height: 53.h,
            width: 75.w,
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Введите название валюты",
                        filled: true),
                    onChanged: (text) {
                      widget.seachs.seach_valute(text);
                      widget.seachs.seach = true;
                      setState(() {});
                    },
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  child: SizedBox(
                    height: 47.h,
                    width: 75.w,
                    child: Builder(builder: (context) {
                      if (widget.seachs.seach == true) {
                        return ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: widget.valutes.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          widget.dataSet.set_valute(
                                              widget.seachs.index[index]);
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                            widget
                                                .valutes[
                                                    widget.seachs.index[index]]
                                                .Name,
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
                      } else {
                        return ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: widget.valutes.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      }
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
                  decoration: const BoxDecoration(
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
