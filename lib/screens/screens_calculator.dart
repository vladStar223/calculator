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

class calculator extends StatefulWidget {
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    return Column(
      children: [
        Expanded(
          child: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    textAlign: TextAlign.right,
                    Provider.of<input_number_calculator>(context).count,
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12.sw,
                        fontFamily: "Nokora",
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  width: 100.sw,
                  height: 0.1.sh,
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
