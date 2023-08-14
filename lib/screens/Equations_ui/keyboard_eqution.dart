import 'package:flutter/cupertino.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../Core/provider/Equations/decision_urv.dart';
import '../../Core/provider/Logarith/input_number_log.dart';
import '../../Core/provider/input_class.dart';
import '../../Core/provider/сhange_of_function.dart';
import '../buttons.dart';

class keyboard_equation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final animation = Provider.of<Input_number_equations>(context);
    final equations = Provider.of<Input_number_equations>(context);
    // используешь это удобно но когда все вместе такое
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
          height: 0.7.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
              onPressed: () {},
              type: 3,
              number: "AC",
            ),
            InputButton(
              onPressed: () {
                equations.animated_first_screen();
              },
              type: 2,
              number: "x²",
            ),
            InputButton(
              onPressed: () {
                equations.animated_second_screen();
              },
              type: 2,
              number: "x³",
            ),
            InputButton(
              onPressed: () {
                equations.animated_third_screen();
              },
              type: 2,
              number: "x⁴",
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  equations.nums_press("7");
                },
                type: 1,
                number: "7",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.nums_press("8");
                },
                type: 1,
                number: "8",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.nums_press("9");
                },
                type: 1,
                number: "9",
                font: 8.0),
            InputButton(
              onPressed: () {
                equations.delete_press();
              },
              type: 2,
              number: "Del",
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  equations.nums_press("4");
                },
                type: 1,
                number: "4",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.nums_press("5");
                },
                type: 1,
                number: "5",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.nums_press("6");
                },
                type: 1,
                number: "6",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.minus_press();
                },
                type: 2,
                number: "-",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  equations.nums_press("1");
                },
                type: 1,
                number: "1",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.nums_press("2");
                },
                type: 1,
                number: "2",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.nums_press("3");
                },
                type: 1,
                number: "3",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.minus_press();
                },
                type: 2,
                number: "+",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  equations.nums_press("e");
                },
                type: 1,
                number: "e",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.nums_press("0");
                },
                type: 1,
                number: "0",
                font: 8.0),
            InputButton(
                onPressed: () {
                  equations.comma_press();
                },
                type: 1,
                number: ".",
                font: 8.0),
            InputButton(
                onPressed: () async {
                  equations.resuilt();
                  await Provider.of<Decision_urv>(context, listen: false).sys_v;
                  equations.result_ac = true;
                },
                type: 2,
                number: "=",
                font: 8.0),
          ],
        ),
      ],
    );
    throw UnimplementedError();
  }
}
