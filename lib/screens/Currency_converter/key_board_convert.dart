import 'package:calculator/Core/provider/Valute/decide_valute.dart';
import 'package:calculator/Screens/buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../theme/color/theme.dart';

class KeyboardConvert extends StatefulWidget {
  const KeyboardConvert({super.key});

  @override
  State<KeyboardConvert> createState() => _KeyboardConvertState();
}

class _KeyboardConvertState extends State<KeyboardConvert> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final inputClass = Provider.of<Decide_valute>(context);
    // используешь это удобно но когда все вместе такое
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            InputButton(
                onPressed: () {
                  inputClass.nums_press("7");
                },
                type: 1,
                number: "7",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("4");
                },
                type: 1,
                number: "4",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("1");
                },
                type: 1,
                number: "1",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("e");
                },
                type: 1,
                number: "e",
                font: 8.0),
          ],
        ),
        Column(
          children: [
            InputButton(
                onPressed: () {
                  inputClass.nums_press("8");
                },
                type: 1,
                number: "8",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("5");
                },
                type: 1,
                number: "5",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("2");
                },
                type: 1,
                number: "2",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("0");
                },
                type: 1,
                number: "0",
                font: 8.0),
          ],
        ),
        Column(
          children: [
            InputButton(
                onPressed: () {
                  inputClass.nums_press("9");
                },
                type: 1,
                number: "9",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("6");
                },
                type: 1,
                number: "6",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.nums_press("3");
                },
                type: 1,
                number: "3",
                font: 8.0),
            SizedBox(
              height: 2.5.h,
            ),
            InputButton(
                onPressed: () {
                  inputClass.comma_press();
                },
                type: 1,
                number: ".",
                font: 8.0),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 19.h,
              width: 20.w,
              child: ElevatedButton(
                onPressed: () {
                  inputClass.ac_press();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.buttoncolor1),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
                ),
                child: Center(
                  child: Text(
                    "AC",
                    style: TextStyle(
                        color: AppColors.textcolor,
                        fontSize: 8.w,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              height: 19.h,
              width: 20.w,
              child: ElevatedButton(
                onPressed: () {
                  inputClass.delete_press();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.buttoncolor1),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
                ),
                child: Center(
                  child: Text(
                    "Del",
                    style: TextStyle(
                        color: AppColors.textcolor,
                        fontSize: 7.w,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
