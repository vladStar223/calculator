import 'package:flutter/cupertino.dart';
import 'package:calculator/core/responsive.dart';
import 'package:provider/provider.dart';

import '../../core/provider/Equations/decision_urv.dart';
import '../../core/provider/input_class.dart';
import '../../theme/color/theme.dart';

class Resuilt extends StatelessWidget {
  const Resuilt({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    var decision = Provider.of<Decision_urv>(context);
    var fonturv = 7;
    if (decision.urvshow.length > 27) {
      fonturv = 5;
    }
    if (decision.urvshow.length > 35) {
      fonturv = 4;
    }
    return Builder(builder: (context) {
      if (Provider.of<Input_number_equations>(context).decision_eql == true) {
        Provider.of<Decision_urv>(context).sys_v;
        Provider.of<Decision_urv>(context).decision_ur();
        Provider.of<Input_number_equations>(context).decision_eql = false;
      }
      if (Provider.of<Decision_urv>(context).bex == true) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.buttoncolor1,
            borderRadius: BorderRadius.circular(45),
          ),
          child: Column(children: [
            Center(
              child: Text(
                "Решение",
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(9),
                    fontWeight: FontWeight.w200,
                    color: AppColors.textcolor),
              ),
            ),
            SizedBox(
              height: context.h(1),
            ),
            Text(
              Provider.of<Decision_urv>(context).urvshow,
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: context.w(fonturv.toDouble()),
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Text(
              "D = b² - 4 × a × c",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: context.w(8),
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Text(
              "X = -+√D ÷ 2 * a",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: context.w(8),
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "√D =",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: context.w(9),
                      fontWeight: FontWeight.w200,
                      color: AppColors.textcolor),
                ),
                Container(
                  width: context.w(60),
                  height: context.h(5.1),
                  decoration: BoxDecoration(
                    color: AppColors.output,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      decision.D.toString(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: AppColors.textcolor2,
                          fontSize: context.w(5.3),
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "X1 =",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: context.w(9),
                      fontWeight: FontWeight.w200,
                      color: AppColors.textcolor),
                ),
                Container(
                  width: context.w(60),
                  height: context.h(5.1),
                  decoration: BoxDecoration(
                    color: AppColors.output,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      decision.x1.toString(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: AppColors.textcolor2,
                          fontSize: context.w(5.3),
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "X2 =",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: context.w(9),
                      fontWeight: FontWeight.w200,
                      color: AppColors.textcolor),
                ),
                Container(
                  width: context.w(60),
                  height: context.h(5.1),
                  decoration: BoxDecoration(
                    color: AppColors.output,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      decision.x2.toString(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: AppColors.textcolor2,
                          fontSize: context.w(5.3),
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        );
      } else {
        return const Nosolution();
      }
    });
  }
}

class Nosolution extends StatelessWidget {
  const Nosolution({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    var decision = Provider.of<Decision_urv>(context);
    var fonturv = 7;
    var fontx = 5;
    if (decision.x2.length > 17) {
      fontx = 3;
    }
    if (decision.urvshow.length > 27) {
      fonturv = 5;
    }
    if (decision.urvshow.length > 35) {
      fonturv = 4;
    }
    return Container(
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Column(children: [
        Center(
          child: Text(
            "Решение",
            style: TextStyle(
                fontFamily: "Nokora",
                fontSize: context.w(9),
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
        ),
        SizedBox(
          height: context.h(1),
        ),
        Text(
          decision.urvshow,
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: context.w(fonturv.toDouble()),
              fontWeight: FontWeight.w200,
              color: AppColors.textcolor),
        ),
        SizedBox(
          height: context.h(1),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Нет корней",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: context.w(10),
                  color: AppColors.textcolor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Перепроверьте коэффициенты",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: context.w(6),
                      color: AppColors.textcolor),
                ),
              ],
            ),
            Text(
              "Тест",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: context.w(6),
                  color: AppColors.textcolor),
            ),
          ],
        ),
      ]),
    );
  }
}

class ResultUrv3 extends StatelessWidget {
  const ResultUrv3({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    var decision = Provider.of<Decision_urv>(context);
    // TODO: implement build
    var fonturv = 7;
    var fontx = 5;
    if (decision.x2.length > 17) {
      fontx = 3;
    }
    if (decision.urvshow.length > 27) {
      fonturv = 5;
    }
    if (decision.urvshow.length > 35) {
      fonturv = 4;
    }
    return Builder(builder: (context) {
      if (Provider.of<Input_number_equations>(context).decision_eql == true) {
        Provider.of<Decision_urv>(context).sys_v;
        Provider.of<Decision_urv>(context).decision_ur();
        Provider.of<Input_number_equations>(context).decision_eql = false;
      }
      return Container(
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Column(children: [
          Center(
            child: Text(
              "Решение",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: context.w(9),
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
          ),
          SizedBox(
            height: context.h(1),
          ),
          Text(
            decision.urvshow,
            style: TextStyle(
                fontFamily: "Nokora",
                fontSize: context.w(fonturv.toDouble()),
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
          Text(
            "Метод решения по формуле Кардано",
            style: TextStyle(
                fontFamily: "Nokora",
                fontSize: context.w(3),
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
          Text(
            "Q = (a² - 3 * b) / 9",
            style: TextStyle(
                fontFamily: "Nokora",
                fontSize: context.w(6),
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
          Text(
            "R = (2 * a ³- 9 * a * b + 27 * c) / 54",
            style: TextStyle(
                fontFamily: "Nokora",
                fontSize: context.w(6),
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "X1 =",
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(9),
                    fontWeight: FontWeight.w200,
                    color: AppColors.textcolor),
              ),
              Container(
                width: context.w(60),
                height: context.h(5.1),
                decoration: BoxDecoration(
                  color: AppColors.output,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    decision.x1.toString(),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: AppColors.textcolor2,
                        fontSize: context.w(5),
                        fontFamily: "Nokora",
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "X2 =",
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(9),
                    fontWeight: FontWeight.w200,
                    color: AppColors.textcolor),
              ),
              Container(
                width: context.w(60),
                height: context.h(5.1),
                decoration: BoxDecoration(
                  color: AppColors.output,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    decision.x2,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: AppColors.textcolor2,
                        fontSize: context.w(fontx.toDouble()),
                        fontFamily: "Nokora",
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "X3 =",
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(9),
                    fontWeight: FontWeight.w200,
                    color: AppColors.textcolor),
              ),
              Container(
                width: context.w(60),
                height: context.h(5.1),
                decoration: BoxDecoration(
                  color: AppColors.output,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    decision.x3,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: AppColors.textcolor2,
                        fontSize: context.w(fontx.toDouble()),
                        fontFamily: "Nokora",
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
        ]),
      );
    });
  }
}

class ResultUrv4 extends StatelessWidget {
  const ResultUrv4({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    var decision = Provider.of<Decision_urv>(context);
    var fonturv = 7;
    var fontx = 5;
    if (decision.x2.length > 17) {
      fontx = 3;
    }
    if (decision.urvshow.length > 27) {
      fonturv = 5;
    }
    if (decision.urvshow.length > 35) {
      fonturv = 4;
    }
    return Builder(builder: (context) {
      if (Provider.of<Input_number_equations>(context).decision_eql == true) {
        Provider.of<Decision_urv>(context).sys_v;
        Provider.of<Decision_urv>(context).decision_ur();
        Provider.of<Input_number_equations>(context).decision_eql = false;
      }

      return Builder(builder: (context) {
        if (Provider.of<Decision_urv>(context).bex == true) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.buttoncolor1,
              borderRadius: BorderRadius.circular(45),
            ),
            child: Column(children: [
              Center(
                child: Text(
                  "Решение",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: context.w(9),
                      fontWeight: FontWeight.w200,
                      color: AppColors.textcolor),
                ),
              ),
              SizedBox(
                height: context.h(1),
              ),
              Text(
                decision.urvshow,
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(fonturv.toDouble()),
                    fontWeight: FontWeight.w200,
                    color: AppColors.textcolor),
              ),
              Text(
                "решается через замену переменной",
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(4),
                    color: AppColors.textcolor),
              ),
              Text(
                "t = x²",
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(5),
                    color: AppColors.textcolor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "X1 =",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: context.w(9),
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  Container(
                    width: context.w(60),
                    height: context.h(5.1),
                    decoration: BoxDecoration(
                      color: AppColors.output,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        decision.x1.toString(),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: context.w(fontx.toDouble()),
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.h(0.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "X2 =",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: context.w(9),
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  Container(
                    width: context.w(60),
                    height: context.h(5.1),
                    decoration: BoxDecoration(
                      color: AppColors.output,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        (decision.x2),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: context.w(fontx.toDouble()),
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.h(0.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "X3 =",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: context.w(9),
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  Container(
                    width: context.w(60),
                    height: context.h(5.1),
                    decoration: BoxDecoration(
                      color: AppColors.output,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        decision.x3,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: context.w(fontx.toDouble()),
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.h(0.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "X4 =",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: context.w(9),
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  Container(
                    width: context.w(60),
                    height: context.h(5.1),
                    decoration: BoxDecoration(
                      color: AppColors.output,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        decision.x4.toString(),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: context.w(fontx.toDouble()),
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.buttoncolor1,
              borderRadius: BorderRadius.circular(45),
            ),
            child: Column(children: [
              Center(
                child: Text(
                  "Решение",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: context.w(9),
                      fontWeight: FontWeight.w200,
                      color: AppColors.textcolor),
                ),
              ),
              SizedBox(
                height: context.h(1),
              ),
              Text(
                decision.urvshow,
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(fonturv.toDouble()),
                    fontWeight: FontWeight.w200,
                    color: AppColors.textcolor),
              ),
              Text(
                "решается через замену переменной",
                style: TextStyle(
                    fontFamily: "Nokora",
                    fontSize: context.w(4),
                    color: AppColors.textcolor),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Нет корней",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: context.w(10),
                        color: AppColors.textcolor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Перепроверьте коэффициенты",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: context.w(6),
                            color: AppColors.textcolor),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          );
        }
      });
    });
  }
}
