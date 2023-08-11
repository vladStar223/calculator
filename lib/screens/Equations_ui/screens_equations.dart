import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/provider/input_class.dart';

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
                    width: 75.w,
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
                            fontSize: 5.h,
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 10.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 10.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 10.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
                    width: 75.w,
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
                            fontSize: 6.w,
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 0.8.h,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 9.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 9.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 9.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                  "d = ",
                  style: TextStyle(
                      fontSize: 9.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[3]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
                    width: 75.w,
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
                            fontSize: 5.h,
                            fontWeight: FontWeight.w200,
                            color: AppColors.textcolor),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 10.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[0]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 10.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[1]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 10.w,
                      fontFamily: "Nokora",
                      color: AppColors.textcolor),
                ),
                const SizedBox(
                  width: 6,
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.w,
                      height: 5.1.h,
                      decoration: BoxDecoration(
                        color: AppColors.output,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: equations.active_coefficient[2]
                                ? AppColors.color_of_border
                                : Colors.transparent,
                            width: 0.5.w),
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
                                fontSize: 5.3.w,
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
