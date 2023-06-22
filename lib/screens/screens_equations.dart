import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/animated_class.dart';
import 'package:calculator/main.dart';
import 'package:calculator/provider_class.dart';

class quadratic_equation extends StatefulWidget {
  const quadratic_equation({super.key});

  @override
  State<quadratic_equation> createState() => _quadratic_equationState();
}

class _quadratic_equationState extends State<quadratic_equation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: AppColors().buttoncolor1,
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
                      color: AppColors().buttoncolor1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax^2 + bx - c = 0",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: 5.sh,
                            fontWeight: FontWeight.w200,
                            color: AppColors().textcolor),
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            Provider.of<input_number>(context).a_text,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).b_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
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
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).c_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
    return Container(
      decoration: BoxDecoration(
        color: AppColors().buttoncolor1,
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
                      color: AppColors().buttoncolor1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax^3 + bx^2 + cx + d = 0",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: 6.sw,
                            fontWeight: FontWeight.w200,
                            color: AppColors().textcolor),
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            Provider.of<input_number>(context).a_text,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).b_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
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
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).c_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().D_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).d_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
    return Container(
      decoration: BoxDecoration(
        color: AppColors().buttoncolor1,
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
                      color: AppColors().buttoncolor1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax^4 + bx^3 + cx^2 + dx = 0",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: 6.sw,
                            fontWeight: FontWeight.w200,
                            color: AppColors().textcolor),
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            Provider.of<input_number>(context).a_text,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).b_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
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
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).c_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
                      color: AppColors().textcolor),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<input_number>().D_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<input_number>(context).d_text,
                            style: TextStyle(
                                color: AppColors().textcolor2,
                                fontSize: 6.sw,
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
