import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../provider/input_class.dart';
import '../provider/provider_class.dart';
import '../theme/color/theme.dart';

class InputButton extends StatefulWidget {
  final Function() onPressed;
  final int type;
  final String number;
  final double font;
  const InputButton({
    super.key,
    required this.type,
    required this.onPressed,
    required this.number,
    this.font = 5.4,
  });
  @override
  State<InputButton> createState() => _InputButtonState();
}

class _InputButtonState extends State<InputButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    if (widget.type == 1) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            widget.number,
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: widget.font.sw,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (widget.type == 2) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Center(
            child: Text(
              widget.number,
              style: TextStyle(
                  color: AppColors.textcolor,
                  fontSize: widget.font.sw,
                  fontFamily: "Nokora"),
            ),
          ),
        ),
      );
    }
    if (widget.type == 3) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<input_number>().AC_press();
          },
          onLongPress: () {
            context.read<input_number>().setlongtap_ac();
            context.read<input_number>().AC_press();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            "AC",
            style: TextStyle(
                color: AppColors.textcolor,
                fontSize: 5.sw,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (widget.type == 4) {
      return Container(
        height: 9.sh,
        width: 20.sw,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<Input_number_calculator>().ac_press();
          },
          onLongPress: () {
            context.read<Input_number_calculator>().setlongtap_ac();
            context.read<Input_number_calculator>().ac_press();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            "AC",
            style: TextStyle(
                color: AppColors.textcolor,
                fontSize: 5.sw,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    throw UnimplementedError();
  }
}

class special_InputButton extends StatefulWidget {
  final Function() onPressed;
  final Icon myIcon;
  const special_InputButton(
      {super.key, required this.onPressed, required this.myIcon});
  @override
  State<special_InputButton> createState() => _special_InputButtonState();
}

class _special_InputButtonState extends State<special_InputButton> {
  @override
  Widget build(BuildContext context) {
    var AppColors = Provider.of<AppColor>(context);
    // TODO: implement build
    return Container(
      height: 9.sh,
      width: 20.sw,
      decoration: BoxDecoration(
        color: AppColors.buttoncolor1,
        shape: BoxShape.circle,
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: AppColors.buttoncolor1,
          animationDuration: const Duration(milliseconds: 2500),
        ),
        child: widget.myIcon,
        //color: AppColors.textcolor,
        //size: 9.sw,
      ),
    );
    throw UnimplementedError();
  }
}