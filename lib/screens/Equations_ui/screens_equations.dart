import 'package:calculator/theme/color/theme.dart';
import 'package:calculator/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/provider/input_class.dart';

class QuadraticEquation extends StatelessWidget {
  const QuadraticEquation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    final equations = Provider.of<Input_number_equations>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: context.w(75),
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.buttoncolor1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax² + bx - c = 0",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: context.h(5),
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.h(2),
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: context.w(10),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            equations.text_in_cofficients[0],
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.h(3),
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: context.w(10),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            equations.text_in_cofficients[1],
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.h(3),
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: context.w(10),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53.8),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            equations.text_in_cofficients[2],
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CubicEquation extends StatelessWidget {
  const CubicEquation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    final equations = Provider.of<Input_number_equations>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: context.w(75),
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.buttoncolor1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax³ + bx² + cx + d = 0",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: context.w(6),
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.h(0.8),
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: context.w(9),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            equations.text_in_cofficients[0],
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.h(1),
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: context.w(9),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            equations.text_in_cofficients[1],
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.h(1),
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: context.w(9),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            equations.text_in_cofficients[2],
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.h(1),
            ),
            Row(
              children: [
                Text(
                  "d = ",
                  style: TextStyle(
                      fontSize: context.w(9),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53.8),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[3]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.D_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            equations.text_in_cofficients[3],
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BiquadrateEquation extends StatelessWidget {
  const BiquadrateEquation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    final equations = Provider.of<Input_number_equations>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: context.w(75),
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.buttoncolor1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax⁴ + bx² - c = 0",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: context.h(5),
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.h(2),
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: context.w(10),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            equations.text_in_cofficients[0],
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.h(3),
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: context.w(10),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            equations.text_in_cofficients[1],
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.h(3),
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: context.w(10),
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: context.w(53.8),
                      height: context.h(5.1),
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: context.w(0.5)),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          equations.C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            equations.text_in_cofficients[2],
                            style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: context.w(5.3),
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
