import 'package:calculator/provider/input_class.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class calculator extends StatelessWidget {
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
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  Number_calculator.count,
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
                                  Number_calculator.result,
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
                              Number_calculator.count,
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
