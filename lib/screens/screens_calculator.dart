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
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 90.sw,
              height: 0.1.sh,
              color: AppColors.textcolor,
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
