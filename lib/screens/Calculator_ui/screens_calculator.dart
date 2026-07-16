import 'package:calculator/theme/color/theme.dart';
import 'package:calculator/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../core/provider/input_class.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    var numberCalculator = Provider.of<Input_number_calculator>(context);
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
                  if (numberCalculator.decide == true) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  numberCalculator.count,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  numberCalculator.result,
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: context.w(10),
                                      fontFamily: "Nokora",
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              textAlign: TextAlign.right,
                              numberCalculator.count,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: context.w(12),
                                  fontFamily: "Nokora",
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                }),
                Container(
                  width: context.w(100),
                  height: context.h(0.3),
                  color: AppColors.textcolor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: context.h(1.9),
        )
      ],
    );
  }
}
