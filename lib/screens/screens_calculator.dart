import 'package:calculator/provider/input_class.dart';
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
import '../provider/input_class.dart';
import '../provider/input_class.dart';
import '../provider/input_class.dart';

class calculator extends StatefulWidget {
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    var Number_calculator = Provider.of<Input_number_calculator>(context);
    return Column(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Builder(builder: (context) {
                  /// some operation here ...
                  if (Number_calculator.decide == true) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              textAlign: TextAlign.right,
                              Number_calculator.count,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 12.sw,
                                  fontFamily: "Nokora",
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              textAlign: TextAlign.right,
                              Number_calculator.result,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 10.sw,
                                  fontFamily: "Nokora",
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )
                      ],
                    );
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          textAlign: TextAlign.right,
                          Number_calculator.count,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 12.sw,
                              fontFamily: "Nokora",
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    );
                  }
                }),
                Container(
                  width: 100.sw,
                  height: 0.2.sh,
                  color: AppColors.textcolor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 1.9.sh,
        )
      ],
    );
  }
}
