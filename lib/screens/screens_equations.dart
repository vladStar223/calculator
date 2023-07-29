import 'package:calculator/provider/decision_urv.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/switching%20classes/animated_class.dart';
import 'package:calculator/main.dart';
import 'package:calculator/provider/provider_class.dart';

import '../provider/input_class.dart';

class quadratic_equation extends StatefulWidget {
  const quadratic_equation({super.key});

  @override
  State<quadratic_equation> createState() => _quadratic_equationState();
}

class _quadratic_equationState extends State<quadratic_equation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    final equations = Provider.of<Input_number_equations>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: 75.sw,
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
                            fontSize: 5.sh,
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.sh,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 10.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
              height: 3.sh,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 10.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
              height: 3.sh,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 10.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
    throw UnimplementedError();
  }
}

class cubic_equation extends StatefulWidget {
  const cubic_equation({super.key});

  @override
  State<cubic_equation> createState() => _cubic_equationState();
}

class _cubic_equationState extends State<cubic_equation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    final equations = Provider.of<Input_number_equations>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: 75.sw,
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
                            fontSize: 6.sw,
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 0.8.sh,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 9.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
              height: 1.sh,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 9.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
              height: 1.sh,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 9.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
              height: 1.sh,
            ),
            Row(
              children: [
                Text(
                  "d = ",
                  style: TextStyle(
                      fontSize: 9.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[3]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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

class biquadrate_equation extends StatefulWidget {
  const biquadrate_equation({super.key});

  @override
  State<biquadrate_equation> createState() => _biquadrate_equationState();
}

class _biquadrate_equationState extends State<biquadrate_equation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    final equations = Provider.of<Input_number_equations>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: 75.sw,
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
                            fontSize: 5.sh,
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.sh,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 10.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
              height: 3.sh,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 10.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
              height: 3.sh,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 10.sw,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.sw),
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
                                fontSize: 5.3.sw,
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
