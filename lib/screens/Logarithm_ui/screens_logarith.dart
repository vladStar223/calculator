import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/provider/Logarith/input_number_log.dart';
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
            padding: EdgeInsets.all(2.w),
            child: Text(
              textAlign: TextAlign.center,
              "Решение логарифмов",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 10.w,
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
                    fontSize: 25.w,
                    fontWeight: FontWeight.w100,
                    fontFamily: "Nokora"),
              ),
              SizedBox(
                width: 1.5.w,
              ),
              Container(
                width: 45.w,
                height: 7.5.h,
                decoration: BoxDecoration(
                  color: AppColors.buttoncolor1,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Number.active_coefficient[1]
                          ? AppColors.color_of_border
                          : Colors.transparent,
                      width: 0.8.w),
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
                          fontSize: 5.3.w,
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
                width: 40.w,
              ),
              Container(
                width: 20.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: AppColors.buttoncolor1,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Number.active_coefficient[0]
                          ? AppColors.output
                          : Colors.transparent,
                      width: 0.8.w),
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
                          fontSize: 5.3.w,
                          fontFamily: "Nokora",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 9.h,
            width: 100.w,
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
                              fontSize: 12.w,
                              fontFamily: "Nokora",
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 100.w,
                  height: 0.3.h,
                  color: AppColors.textcolor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 46.h,
            width: 100.w,
            child: KeyboardLogarithm(),
          ),
        ],
      ),
    );
  }
}
