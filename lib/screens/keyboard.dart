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

import '../provider/decision_urv.dart';
import '../provider/input_class.dart';
import '../provider/сhange_of_function.dart';
import 'buttons.dart';

class keyboard_equation extends StatefulWidget {
  @override
  State<keyboard_equation> createState() => _keyboard_equationState();
}

class _keyboard_equationState extends State<keyboard_equation> {
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
          height: 1.sh,
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
          height: 1.sh,
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
          height: 1.sh,
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
          height: 1.sh,
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

                  await Provider.of<Decision_urv>(context, listen: false)
                      .decision_ur();
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
            Special_InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().multiplication();
                },
                myIcon: Icon(MyFlutterApp.svg_editor_image__1_,
                    color: AppColors.textcolor, size: 5.sw)),
            Special_InputButton(
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
            Special_InputButton(
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
            Special_InputButton(
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
            Special_InputButton(
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
                  context.read<Input_number_calculator>().set_arc();
                },
                type: 1,
                number: "2nd",
                font: 4.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().set_deg_rad();
                },
                type: 1,
                number: "deg",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().sin();
                },
                type: 1,
                number: "sin",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().cos();
                },
                type: 1,
                number: "cos",
                font: 5.0),
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().tan();
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
          height: 1.sh,
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
                  size: 6.sw,
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
                    color: AppColors.textcolor, size: 5.sw)),
            Special_InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().division();
                },
                myIcon: Icon(MyFlutterApp.desions_,
                    color: AppColors.textcolor, size: 4.sw)),
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
                    color: AppColors.textcolor, size: 8.sw)),
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
            InputButton_mini(
                onPressed: () {
                  context.read<Input_number_calculator>().nums_press("3.14");
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
                    color: AppColors.textcolor, size: 4.sw)),
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
                font: 6.0),
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
          height: 1.sh,
        ),
      ],
    );
    throw UnimplementedError();
  }
}
