import 'package:calculator/Screens/buttons.dart';
import 'package:calculator/screens/Equations_ui/keyboard_eqution.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/provider/input_class.dart';
import '../../Core/provider/сhange_of_function.dart';
import '../Calculator_ui/key_board.dart';
import '../Calculator_ui/screens_calculator.dart';
import '../Currency_converter/converter.dart';
import '../Equations_ui/switching classes/animated_class.dart';
import '../Logarithm_ui/screens_logarith.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    AppColor AppColors = Provider.of<AppColor>(context);
    var changeFun = Provider.of<ChangeFunction>(context);
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        child: Builder(builder: (context) {
          if (changeFun.equation_function == true) {
            return const Equations();
          } else if (changeFun.menu == true) {
            return SizedBox(
                height: 95.h, width: 100.w, child: const MenuChoose());
          } else if (changeFun.currency_convert == true) {
            return const Center(child: CurrencyConverter());
          } else if (changeFun.logarithm == true) {
            return SizedBox(
                height: 95.h, width: 100.w, child: const Logarithm());
          } else {
            return const Calculators();
          }
        }),
      ),
    );
  }
}

class MenuChoose extends StatelessWidget {
  const MenuChoose({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    AppColor AppColors = Provider.of<AppColor>(context);
    var changeFun = Provider.of<ChangeFunction>(context);
    const double space = 15;
    return ListView(
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: 4.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: space),
              child: SizedBox(
                width: 22.w,
                height: 10.h,
                child: ElevatedButton(
                    onPressed: () {
                      changeFun.change_state_equation_function();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                    ),
                    child: Text(
                      "ax² - bx",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 4.w,
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: space),
              child: SizedBox(
                width: 22.w,
                height: 10.h,
                child: ElevatedButton(
                    onPressed: () {
                      changeFun.change_state_logarithm();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                    ),
                    child: Text(
                      "log",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 4.w,
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: space),
              child: SizedBox(
                width: 22.w,
                height: 10.h,
                child: ElevatedButton(
                    onPressed: () {
                      changeFun.change_state_currency_convert();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                    ),
                    child: Icon(
                      MyFlutterApp.currency_exchange_3845944,
                      color: AppColors.white,
                      size: 10.w,
                    )),
              ),
            ),
          ],
        ),
        const Row(),
      ],
    );
  }
}

class Equations extends StatelessWidget {
  const Equations({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(height: 43.30.h, width: 95.w, child: const AnimatedScreen()),
        // resuilt_animated_screen(), не используется, но может нужно тебе
        SizedBox(
          height: 49.7.h,
          width: 100.w,
          child: const KeyboardEquation(),
        ),
      ],
    );
  }
}

class Calculators extends StatelessWidget {
  const Calculators({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    AppColor AppColors = Provider.of<AppColor>(context);
    var numberCalculator = Provider.of<Input_number_calculator>(context);
    var changeOfFunction = Provider.of<ChangeFunction>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    // отвечает за провекру что показывать
    /// some operation here ...
    if (changeOfFunction.sta_calculator == true) {
      return Column(
        children: [
          SizedBox(
            height: height / 2.25,
            width: width,
            child: Column(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Builder(builder: (context) {
                          /// some operation here ...
                          if (numberCalculator.decide == true) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Flexible(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          textAlign: TextAlign.right,
                                          numberCalculator.count,
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 45,
                                              fontFamily: "Nokora",
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Flexible(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          textAlign: TextAlign.right,
                                          numberCalculator.result,
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 45,
                                              fontFamily: "Nokora",
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          } else {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      textAlign: TextAlign.right,
                                      numberCalculator.count,
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 45,
                                          fontFamily: "Nokora",
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        }),
                        Container(
                          width: width,
                          height: height / 300,
                          color: AppColors.textcolor,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: height / 2,
            width: width,
            child: Column(
              children: [
                const SizedBox(
                  height: 1,
                ),
                Row(
                  // тут нужна анимация
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Sta_inputButton(
                      onPressed: () {},
                      type: 4,
                      number: "AC",
                    ),
                    Sta_inputButton(
                      onPressed: () {
                        context.read<Input_number_calculator>().delete_press();
                      },
                      type: 2,
                      number: "Del",
                    ),
                    Sta_special_InputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .percent_of_number();
                        },
                        myIcon: Icon(MyFlutterApp.svg_editor_image__1_,
                            color: AppColors.textcolor, size: 25)),
                    Sta_special_InputButton(
                        onPressed: () {
                          context.read<Input_number_calculator>().division();
                        },
                        myIcon: Icon(MyFlutterApp.desions_,
                            color: AppColors.textcolor, size: 25)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // тут нужна анимация
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("7");
                        },
                        type: 1,
                        number: "7",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("8");
                        },
                        type: 1,
                        number: "8",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("9");
                        },
                        type: 1,
                        number: "9",
                        font: 8.0),
                    Sta_special_InputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .multiplication();
                        },
                        myIcon: Icon(
                            MyFlutterApp
                                .multiplication_tbget5tyleyh, // знак проценатп
                            color: AppColors.textcolor,
                            size: 40)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // тут нужна анимация
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("4");
                        },
                        type: 1,
                        number: "4",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("5");
                        },
                        type: 1,
                        number: "5",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("6");
                        },
                        type: 1,
                        number: "6",
                        font: 8.0),
                    Sta_special_InputButton(
                        onPressed: () {
                          context.read<Input_number_calculator>().minus_press();
                        },
                        myIcon: Icon(
                            MyFlutterApp.minus_uk9l2bpabquc, // знак проценатп
                            color: AppColors.textcolor,
                            size: 25)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // тут нужна анимация
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("1");
                        },
                        type: 1,
                        number: "1",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("2");
                        },
                        type: 1,
                        number: "2",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("3");
                        },
                        type: 1,
                        number: "3",
                        font: 8.0),
                    Sta_special_InputButton(
                        onPressed: () {
                          context.read<Input_number_calculator>().plus_press();
                        },
                        myIcon: Icon(
                            MyFlutterApp.plus_fx7mv1cmdi3i, // знак проценатп
                            color: AppColors.textcolor,
                            size: 25)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // тут нужна анимация
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Sta_special_InputButton(
                      type: 2,
                      onPressed: () {
                        context.read<ChangeFunction>().sta_calculator = false;
                        context
                            .read<ChangeFunction>()
                            .change_state_calculator_expanded();
                      },
                      myIcon:
                          Icon(MyFlutterApp.maximize_4562502, // знак проценатп
                              color: AppColors.textcolor2,
                              size: 35),
                    ),
                    Sta_inputButton(
                        onPressed: () {
                          context
                              .read<Input_number_calculator>()
                              .nums_press("0");
                        },
                        type: 1,
                        number: "0",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context.read<Input_number_calculator>().comma_press();
                        },
                        type: 1,
                        number: ".",
                        font: 8.0),
                    Sta_inputButton(
                        onPressed: () {
                          context.read<Input_number_calculator>().resuilt();
                        },
                        type: 2,
                        number: "=",
                        font: 8.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          AnimatedCrossFade(
            firstChild: SizedBox(
                height: 43.39.h, width: 100.w, child: const Calculator()),
            secondChild: SizedBox(
                height: 30.39.h, width: 100.w, child: const Calculator()),
            crossFadeState: changeOfFunction.calculator
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 50),
          ),
          AnimatedCrossFade(
              firstChild: SizedBox(
                height: 50.h,
                width: 100.w,
                child: const KeyboardCalculator(),
              ),
              secondChild: SizedBox(
                height: 64.h,
                width: 100.w,
                child: const KeyboardCalculatorExpanded(),
              ),
              crossFadeState: changeOfFunction.calculator
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 50)),
          // resuilt_animated_screen(), не используется, но может нужно тебе
        ],
      );
    }
  }
}
