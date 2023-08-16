import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/provider/input_class.dart';

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
                                      fontSize: 12.w,
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
                                      fontSize: 10.w,
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
                                  fontSize: 12.w,
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
                  width: 100.w,
                  height: 0.3.h,
                  color: AppColors.textcolor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 1.9.h,
        )
      ],
    );
  }
}
