import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/provider/input_class.dart';
import '../../Core/provider/сhange_of_function.dart';
import '../../theme/color/theme.dart';
import '../../theme/icon/my_flutter_app_icons.dart';
import '../buttons.dart';

class KeyboardCalculator extends StatelessWidget {
  const KeyboardCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
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
              type: 4,
              number: "AC",
            ),
            InputButton(
              onPressed: () {
                context.read<Input_number_calculator>().delete_press();
              },
              type: 2,
              number: "Del",
            ),
            Special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().percent_of_number();
                },
                myIcon: Icon(MyFlutterApp.svg_editor_image__1_,
                    color: AppColors.textcolor, size: 5.w)),
            Special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().division();
                },
                myIcon: Icon(MyFlutterApp.desions_,
                    color: AppColors.textcolor, size: 5.w)),
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
                  context.read<Input_number_calculator>().nums_press("7");
                },
                type: 1,
                number: "7",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("8");
                },
                type: 1,
                number: "8",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("9");
                },
                type: 1,
                number: "9",
                font: 8.0),
            Special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().multiplication();
                },
                myIcon: Icon(
                    MyFlutterApp.multiplication_tbget5tyleyh, // знак проценатп
                    color: AppColors.textcolor,
                    size: 9.w)),
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
                  context.read<Input_number_calculator>().nums_press("4");
                },
                type: 1,
                number: "4",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("5");
                },
                type: 1,
                number: "5",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("6");
                },
                type: 1,
                number: "6",
                font: 8.0),
            Special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().minus_press();
                },
                myIcon: Icon(MyFlutterApp.minus_uk9l2bpabquc, // знак проценатп
                    color: AppColors.textcolor,
                    size: 5.w)),
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
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "1",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "2",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "3",
                font: 8.0),
            Special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().plus_press();
                },
                myIcon: Icon(MyFlutterApp.plus_fx7mv1cmdi3i, // знак проценатп
                    color: AppColors.textcolor,
                    size: 5.w)),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Special_InputButton(
                type: 2,
                onPressed: () {
                  context
                      .read<ChangeFunction>()
                      .change_state_calculator_expanded();
                },
                myIcon: Icon(MyFlutterApp.maximize_4562502,
                    color: AppColors.textcolor2, size: 9.w)),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("0");
                },
                type: 1,
                number: "0",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().comma_press();
                },
                type: 1,
                number: ".",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().resuilt();
                },
                type: 2,
                number: "=",
                font: 8.0),
          ],
        ),
      ],
    );
  }
}

class KeyboardCalculatorExpanded extends StatelessWidget {
  const KeyboardCalculatorExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    return Column(
      children: [
        SizedBox(
          height: 0.2.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                type: 5,
                onPressed: () {
                  context.read<Input_number_calculator>().set_arc();
                },
                number: "2nd"),
            InputButton_mini(
                type: 6,
                onPressed: () {
                  context.read<Input_number_calculator>().set_deg_rad();
                },
                number: "2nd"),
            InputButton_mini(
                type: 7,
                onPressed: () {
                  context.read<Input_number_calculator>().sin();
                },
                number: "sin"),
            InputButton_mini(
                type: 7,
                onPressed: () {
                  context.read<Input_number_calculator>().cos();
                },
                number: "cos"),
            InputButton_mini(
                type: 7,
                onPressed: () {
                  context.read<Input_number_calculator>().tan();
                },
                number: "tan"),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().degree();
                },
                type: 1,
                number: "x^y",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().log();
                },
                type: 1,
                number: "lg",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().ln();
                },
                type: 1,
                number: "ln",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("(");
                },
                type: 1,
                number: "(",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press(")");
                },
                type: 1,
                number: ")",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 0.7.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Special_InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().root();
                },
                type: 2,
                myIcon: Icon(
                  MyFlutterApp.math,
                  color: AppColors.textcolor2,
                  size: 6.w,
                )),
            InputButton_mini(
                onPressed: () {}, type: 4, number: "AC", font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().delete_press();
                },
                type: 2,
                number: "Del",
                font: 5.0),
            Special_InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().percent_of_number();
                },
                myIcon: Icon(MyFlutterApp.svg_editor_image__1_,
                    color: AppColors.textcolor, size: 5.w)),
            Special_InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().division();
                },
                myIcon: Icon(MyFlutterApp.desions_,
                    color: AppColors.textcolor, size: 4.w)),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().factorial();
                },
                type: 1,
                number: "x!",
                font: 7.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("7");
                },
                type: 1,
                number: "7",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("8");
                },
                type: 1,
                number: "8",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("9");
                },
                type: 1,
                number: "9",
                font: 8.0),
            Special_InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().multiplication();
                },
                myIcon: Icon(MyFlutterApp.multiplication_tbget5tyleyh,
                    color: AppColors.textcolor, size: 8.w)),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().minus_degree();
                },
                type: 1,
                number: "1/x",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("4");
                },
                type: 1,
                number: "4",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("5");
                },
                type: 1,
                number: "5",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("6");
                },
                type: 1,
                number: "6",
                font: 8.0),
            Special_InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().minus_press();
                },
                myIcon: Icon(MyFlutterApp.minus_uk9l2bpabquc,
                    color: AppColors.textcolor, size: 5.w)),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().pi_press();
                },
                type: 1,
                number: "π",
                font: 7.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "1",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "2",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "3",
                font: 8.0),
            Special_InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().plus_press();
                },
                myIcon: Icon(MyFlutterApp.plus_fx7mv1cmdi3i,
                    color: AppColors.textcolor, size: 4.w)),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Special_InputButton_mini(
                type: 2,
                onPressed: () {
                  context.read<ChangeFunction>().change_state_calculator();
                },
                myIcon: Icon(MyFlutterApp.minimize_4562479,
                    color: AppColors.textcolor2, size: 9.w)),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("e");
                },
                type: 1,
                number: "e",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("0");
                },
                type: 1,
                number: "0",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().comma_press();
                },
                type: 1,
                number: ".",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().resuilt();
                },
                type: 2,
                number: "=",
                font: 7.5),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
      ],
    );
  }
}
