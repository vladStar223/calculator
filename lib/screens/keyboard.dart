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

class InputButton extends StatefulWidget {
  final Function() onPressed;
  final int type;
  final String number;
  final double font;
  const InputButton({
    super.key,
    required this.type,
    required this.onPressed,
    required this.number,
    this.font = 5.4,
  });
  @override
  State<InputButton> createState() => _InputButtonState();
}

class _InputButtonState extends State<InputButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    if (widget.type == 1) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            widget.number,
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: widget.font.sw,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (widget.type == 2) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Center(
            child: Text(
              widget.number,
              style: TextStyle(
                  color: AppColors.textcolor,
                  fontSize: widget.font.sw,
                  fontFamily: "Nokora"),
            ),
          ),
        ),
      );
    }
    if (widget.type == 3) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<input_number>().AC_press();
          },
          onLongPress: () {
            context.read<input_number>().setlongtap_ac();
            context.read<input_number>().AC_press();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            "AC",
            style: TextStyle(
                color: AppColors.textcolor,
                fontSize: 5.sw,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (widget.type == 4) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<Input_number_calculator>().ac_press();
          },
          onLongPress: () {
            context.read<Input_number_calculator>().setlongtap_ac();
            context.read<Input_number_calculator>().ac_press();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            "AC",
            style: TextStyle(
                color: AppColors.textcolor,
                fontSize: 5.sw,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    throw UnimplementedError();
  }
}

class special_InputButton extends StatefulWidget {
  final Function() onPressed;
  const special_InputButton({super.key, required this.onPressed});
  @override
  State<special_InputButton> createState() => _special_InputButtonState();
}

class _special_InputButtonState extends State<special_InputButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

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
                context.read<Input_number_calculator>().percent_of_number();
              },
              type: 2,
              number: "%",
            ),
            InputButton(
              onPressed: () {
                context.read<Input_number_calculator>().multiplication();
              },
              type: 2,
              number: "*",
            ),
            InputButton(
              onPressed: () {
                context.read<Input_number_calculator>().division();
              },
              type: 2,
              number: "/",
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
            InputButton(
              onPressed: () {
                context.read<Input_number_calculator>().delete_press();
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
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().minus_press();
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
            InputButton(
                onPressed: () {
                  context.read<Input_number_calculator>().plus_press();
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
                  print("big");
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
