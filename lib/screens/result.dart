import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/animated_class.dart';
import 'package:calculator/provider_class.dart';

class resuilt extends StatefulWidget {
  @override
  State<resuilt> createState() => _resuiltState();
}

//Provider.of<input_number>(context).a_text

class _resuiltState extends State<resuilt> {
  @override
  Widget build(BuildContext context) {
    var AppColors = Provider.of<AppColor>(context);
    var fonturv = 7;
    if (Provider.of<input_number>(context).urvshow.length > 27) {
      fonturv = 5;
    }
    if (Provider.of<input_number>(context).urvshow.length > 35) {
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
                fontSize: 9.sw,
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
        ),
        SizedBox(
          height: 1.sh,
        ),
        Text(
          Provider.of<input_number>(context).urvshow,
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: fonturv.sw,
              fontWeight: FontWeight.w200,
              color: AppColors.textcolor),
        ),
        Text(
          "D = b² - 4 × a × c",
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: 8.sw,
              fontWeight: FontWeight.w200,
              color: AppColors.textcolor),
        ),
        Text(
          "X = -+√D ÷ 2 * a",
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: 8.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).D.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: 5.3.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).x1.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: 5.3.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).x2.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: 5.3.sw,
                      fontFamily: "Nokora",
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class resuilt_urv3 extends StatefulWidget {
  @override
  State<resuilt_urv3> createState() => _resuilt_urv3State();
}

class _resuilt_urv3State extends State<resuilt_urv3> {
  @override
  Widget build(BuildContext context) {
    var AppColors = Provider.of<AppColor>(context);
    // TODO: implement build
    var fonturv = 7;
    var fontx = 5;
    if (Provider.of<input_number>(context).x2.length > 17) {
      fontx = 3;
    }
    if (Provider.of<input_number>(context).urvshow.length > 27) {
      fonturv = 5;
    }
    if (Provider.of<input_number>(context).urvshow.length > 35) {
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
                fontSize: 9.sw,
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
        ),
        SizedBox(
          height: 1.sh,
        ),
        Text(
          Provider.of<input_number>(context).urvshow,
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: fonturv.sw,
              fontWeight: FontWeight.w200,
              color: AppColors.textcolor),
        ),
        Text(
          "Метод решения по формуле Кардано",
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: 3.sw,
              fontWeight: FontWeight.w200,
              color: AppColors.textcolor),
        ),
        Text(
          "Q = (a² - 3 * b) / 9",
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: 6.sw,
              fontWeight: FontWeight.w200,
              color: AppColors.textcolor),
        ),
        Text(
          "R = (2 * a ³- 9 * a * b + 27 * c) / 54",
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: 6.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).x1.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: 5.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  (Provider.of<input_number>(context).x2),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: fontx.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).x3,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: fontx.sw,
                      fontFamily: "Nokora",
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
    throw UnimplementedError();
  }
}

class resuilt_urv4 extends StatefulWidget {
  @override
  State<resuilt_urv4> createState() => _resuilt_urv4State();
}

class _resuilt_urv4State extends State<resuilt_urv4> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    var fonturv = 7;
    var fontx = 5;
    if (Provider.of<input_number>(context).x2.length > 17) {
      fontx = 3;
    }
    if (Provider.of<input_number>(context).urvshow.length > 27) {
      fonturv = 5;
    }
    if (Provider.of<input_number>(context).urvshow.length > 35) {
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
                fontSize: 9.sw,
                fontWeight: FontWeight.w200,
                color: AppColors.textcolor),
          ),
        ),
        SizedBox(
          height: 1.sh,
        ),
        Text(
          Provider.of<input_number>(context).urvshow,
          style: TextStyle(
              fontFamily: "Nokora",
              fontSize: fonturv.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).x1.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: fontx.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  (Provider.of<input_number>(context).x2),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: fontx.sw,
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
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).x3,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: fontx.sw,
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
              "X4 =",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 9.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.textcolor),
            ),
            Container(
              width: 60.sw,
              height: 5.1.sh,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Provider.of<input_number>(context).x4.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColors.textcolor2,
                      fontSize: fontx.sw,
                      fontFamily: "Nokora",
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
    throw UnimplementedError();
  }
}
