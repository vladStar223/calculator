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
    return Container(
      decoration: BoxDecoration(
        color: AppColors().buttoncolor1,
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
                color: AppColors().textcolor),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Вид уравнения:  ",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 6.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
            Text(
              "квадратное",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 6.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Формула Дискримината",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 4.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
            Text(
              "D = b^2 - 4 * a * c",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 5.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Вид",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 4.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
            Text(
              "тут должно как выглядить ",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 5.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Формула X = ",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 6.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
            Text(
              "+-№D - 4 * a * c ",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 7.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "X1 = ",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 8.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
            Text(
              "",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 5.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "X2 = ",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 8.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
            Text(
              "",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 5.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors().textcolor),
            ),
          ],
        ),
      ]),
    );
  }
}
