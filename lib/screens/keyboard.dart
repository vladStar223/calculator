import 'package:flutter/cupertino.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:calculator/provider/provider_class.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/switching%20classes/animated_class.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:calculator/main.dart';

import '../provider/input_class.dart';
import 'buttons.dart';

class keyboard_equation extends StatefulWidget {
  @override
  State<keyboard_equation> createState() => _keyboard_equationState();
}

class _keyboard_equationState extends State<keyboard_equation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final animation = Provider.of<input_number>(context);
    // используешь это удобно но когда все вместе такое
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
          height: 0.7.sh,
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
                context.read<input_number>().Animated_first_screen();
              },
              type: 2,
              number: "x²",
            ),
            InputButton(
              onPressed: () {
                context.read<input_number>().Animated_second_screen();
              },
              type: 2,
              number: "x³",
            ),
            InputButton(
              onPressed: () {
                context.read<input_number>().Animated_third_screen();
              },
              type: 2,
              number: "x⁴",
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("7");
                },
                type: 1,
                number: "7",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("8");
                },
                type: 1,
                number: "8",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("9");
                },
                type: 1,
                number: "9",
                font: 8.0),
            InputButton(
              onPressed: () {
                context.read<input_number>().Delete_press();
              },
              type: 2,
              number: "Del",
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("4");
                },
                type: 1,
                number: "4",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("5");
                },
                type: 1,
                number: "5",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("6");
                },
                type: 1,
                number: "6",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Minus_press();
                },
                type: 2,
                number: "-",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("1");
                },
                type: 1,
                number: "1",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("2");
                },
                type: 1,
                number: "2",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("3");
                },
                type: 1,
                number: "3",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Minus_press();
                },
                type: 2,
                number: "+",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("e");
                },
                type: 1,
                number: "e",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("0");
                },
                type: 1,
                number: "0",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Comma_press();
                },
                type: 1,
                number: ".",
                font: 8.0),
            InputButton(
                onPressed: () {
                  context.read<input_number>().Resuilt_anim_screen();
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

class keyboard_calculator extends StatefulWidget {
  @override
  State<keyboard_calculator> createState() => _keyboard_calculatorState();
}

class _keyboard_calculatorState extends State<keyboard_calculator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final animation = Provider.of<Input_number_calculator>(context);
    // используешь это удобно но когда все вместе такое
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    return Column(
      children: [
        SizedBox(
          height: 0.7.sh,
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
            special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().multiplication();
                },
                myIcon: Icon(MyFlutterApp.svg_editor_image__1_,
                    color: AppColors.textcolor, size: 5.sw)),
            special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().division();
                },
                myIcon: Icon(MyFlutterApp.desions_,
                    color: AppColors.textcolor, size: 5.sw)),
          ],
        ),
        SizedBox(
          height: 1.sh,
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
            special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().multiplication();
                },
                myIcon: Icon(
                    MyFlutterApp.multiplication_tbget5tyleyh, // знак проценатп
                    color: AppColors.textcolor,
                    size: 9.sw)),
          ],
        ),
        SizedBox(
          height: 1.sh,
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
            special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().minus_press();
                },
                myIcon: Icon(MyFlutterApp.minus_uk9l2bpabquc, // знак проценатп
                    color: AppColors.textcolor,
                    size: 5.sw)),
          ],
        ),
        SizedBox(
          height: 1.sh,
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
            special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().plus_press();
                },
                myIcon: Icon(MyFlutterApp.plus_fx7mv1cmdi3i, // знак проценатп
                    color: AppColors.textcolor,
                    size: 5.sw)),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton(
                onPressed: () {
                  context
                      .read<Change_of_function>()
                      .change_state_calculator_expanded();
                },
                type: 1,
                number: "big",
                font: 8.0),
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
    throw UnimplementedError();
  }
}

class Keyboard_calculator_expanded extends StatefulWidget {
  @override
  State<Keyboard_calculator_expanded> createState() =>
      _Keyboard_calculator_expandedState();
}

class _Keyboard_calculator_expandedState
    extends State<Keyboard_calculator_expanded> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    return Column(
      children: [
        SizedBox(
          height: 0.7.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "2nd",
                font: 4.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "rad",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "sin",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "cos",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "tan",
                font: 5.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "x^y",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "lg",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "ln",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "(",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: ")",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "sqrt",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "AC",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "Del",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "%",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "/",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "x!",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "7",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "8",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "9",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "*",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "1/x",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "4",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "5",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "6",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "-",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("1");
                },
                type: 1,
                number: "pi",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "1",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
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
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "+",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputButton_mini(
                onPressed: () {
                  context.read<Change_of_function>().change_state_calculator();
                },
                type: 1,
                number: "big",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("2");
                },
                type: 1,
                number: "e",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "0",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: ".",
                font: 8.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3");
                },
                type: 1,
                number: "=",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
      ],
    );
    throw UnimplementedError();
  }
}
