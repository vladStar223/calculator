import 'package:flutter/material.dart';
import 'package:calculator/core/responsive.dart';
import 'package:provider/provider.dart';
import '../../core/provider/Logarith/input_number_log.dart';
import '../../theme/color/theme.dart';
import 'key_logarithm.dart';

class Logarithm extends StatelessWidget {
  const Logarithm({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    AppColor AppColors = Provider.of<AppColor>(context);
    // ignore: non_constant_identifier_names
    Input_log Number = Provider.of<Input_log>(context);
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(context.w(2)),
            child: Text(
              textAlign: TextAlign.center,
              "Решение логарифмов",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: context.w(10),
                  fontWeight: FontWeight.w100,
                  fontFamily: "Nokora"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "log",
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: context.w(25),
                    fontWeight: FontWeight.w100,
                    fontFamily: "Nokora"),
              ),
              SizedBox(
                width: context.w(1.5),
              ),
              Container(
                width: context.w(45),
                height: context.h(7.5),
                decoration: BoxDecoration(
                  color: AppColors.buttoncolor1,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Number.active_coefficient[1]
                          ? AppColors.color_of_border
                          : Colors.transparent,
                      width: context.w(0.8)),
                ),
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ))),
                  onPressed: () {
                    Number.b_trigger();
                    //equations.A_trigger();
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      Number.text_in_cofficients[1],
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: context.w(5.3),
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: context.w(40),
              ),
              Container(
                width: context.w(20),
                height: context.h(6),
                decoration: BoxDecoration(
                  color: AppColors.buttoncolor1,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Number.active_coefficient[0]
                          ? AppColors.output
                          : Colors.transparent,
                      width: context.w(0.8)),
                ),
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ))),
                  onPressed: () {
                    Number.a_trigger();
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      Number.text_in_cofficients[0],
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: context.w(5.3),
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.h(9),
            width: context.w(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          textAlign: TextAlign.right,
                          Number.result,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: context.w(12),
                              fontFamily: "Nokora",
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: context.w(100),
                  height: context.h(0.3),
                  color: AppColors.textcolor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.h(2),
          ),
          SizedBox(
            height: context.h(46),
            width: context.w(100),
            child: KeyboardLogarithm(),
          ),
        ],
      ),
    );
  }
}
