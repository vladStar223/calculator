// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../Core/provider/input_class.dart';
import '../theme/color/theme.dart';

class InputButton extends StatelessWidget {
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
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    if (type == 1) {
      return Container(
        height: 9.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            number,
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: font.w,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (type == 2) {
      return Container(
        height: 9.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                  color: AppColors.textcolor,
                  fontSize: font.w,
                  fontFamily: "Nokora"),
            ),
          ),
        ),
      );
    }
    if (type == 3) {
      return Container(
        height: 9.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<Input_number_equations>().ac_press();
          },
          onLongPress: () {
            context.read<Input_number_equations>().setlongtap_ac();
            context.read<Input_number_equations>().ac_press();
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
                fontSize: 5.w,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (type == 4) {
      return Container(
        height: 9.h,
        width: 20.w,
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
                fontSize: 5.w,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    throw UnimplementedError();
  }
}

class Sta_inputButton extends StatelessWidget {
  final Function() onPressed;
  final int type;
  final String number;
  final double font;
  const Sta_inputButton({
    super.key,
    required this.type,
    required this.onPressed,
    required this.number,
    this.font = 5.4,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Full screen width and height
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    // ignore: non_constant_identifier_names
    AppColor AppColors = Provider.of<AppColor>(context);
    if (type == 1) {
      return Container(
        height: height * 9,
        width: width * 20,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            number,
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: font * width,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (type == 2) {
      return Container(
        height: height * 9,
        width: width * 20,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                  color: AppColors.textcolor,
                  fontSize: font * width,
                  fontFamily: "Nokora"),
            ),
          ),
        ),
      );
    }
    if (type == 3) {
      return Container(
        height: height * 9,
        width: width * 20,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<Input_number_equations>().ac_press();
          },
          onLongPress: () {
            context.read<Input_number_equations>().setlongtap_ac();
            context.read<Input_number_equations>().ac_press();
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
                fontSize: width * 5,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (type == 4) {
      return Container(
        height: height * 9,
        width: width * 20,
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
                fontSize: width * 5,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    throw UnimplementedError();
  }
}

class Sta_special_InputButton extends StatelessWidget {
  final Function() onPressed;
  final Icon myIcon;
  final int type;
  const Sta_special_InputButton({
    super.key,
    required this.onPressed,
    required this.myIcon,
    this.type = 1,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    // ignore: non_constant_identifier_names
    AppColor AppColors = Provider.of<AppColor>(context);
    // TODO: implement build
    if (type == 1) {
      return Container(
        height: height * 9,
        width: width * 20,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: myIcon,
          //color: AppColors.textcolor,
          //size: 9.w,
        ),
      );
    } else {
      return Container(
        height: height * 9,
        width: width * 20,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: myIcon,
          //color: AppColors.textcolor,
          //size: 9.w,
        ),
      );
    }
  }
}

class InputButton_mini extends StatelessWidget {
  final Function() onPressed;
  final int type;
  final String number;
  final double font;
  final bool arc;
  final bool deg;
  const InputButton_mini({
    super.key,
    required this.type,
    required this.onPressed,
    required this.number,
    this.font = 5.4,
    this.arc = false,
    this.deg = true,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    if (type == 1) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Text(
            textAlign: TextAlign.center,
            number,
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: font.w,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (type == 2) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                  color: AppColors.textcolor,
                  fontSize: font.w,
                  fontFamily: "Nokora"),
            ),
          ),
        ),
      );
    }
    if (type == 3) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<Input_number_equations>().ac_press();
          },
          onLongPress: () {
            context.read<Input_number_equations>().setlongtap_ac();
            context.read<Input_number_equations>().ac_press();
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
                fontSize: 5.w,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (type == 4) {
      return Container(
        height: 8.h,
        width: 17.w,
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
                fontSize: 5.w,
                fontFamily: "Nokora"),
          ),
        ),
      );
    }
    if (type == 5) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: AnimatedCrossFade(
              firstChild: Text(
                "$number¯¹",
                style: TextStyle(
                    color: AppColors.textcolor2,
                    fontSize: 3.w,
                    fontFamily: "Nokora"),
              ),
              secondChild: Text(
                number,
                style: TextStyle(
                    color: AppColors.textcolor2,
                    fontSize: 4.w,
                    fontFamily: "Nokora"),
              ),
              crossFadeState: Provider.of<Input_number_calculator>(context).arc
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 300)),
        ),
      );
    }
    if (type == 7) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: AnimatedCrossFade(
              firstChild: Text(
                "$number¯¹",
                style: TextStyle(
                    color: AppColors.textcolor2,
                    fontSize: 3.4.w,
                    fontFamily: "Nokora"),
              ),
              secondChild: Text(
                number,
                style: TextStyle(
                    color: AppColors.textcolor2,
                    fontSize: 5.w,
                    fontFamily: "Nokora"),
              ),
              crossFadeState: Provider.of<Input_number_calculator>(context).arc
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 300)),
        ),
      );
    }
    if (type == 6) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: AnimatedCrossFade(
              firstChild: Text(
                "deg",
                style: TextStyle(
                    color: AppColors.textcolor2,
                    fontSize: 5.w,
                    fontFamily: "Nokora"),
              ),
              secondChild: Text(
                "rad",
                style: TextStyle(
                    color: AppColors.textcolor2,
                    fontSize: 5.w,
                    fontFamily: "Nokora"),
              ),
              crossFadeState: Provider.of<Input_number_calculator>(context).deg
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 250)),
        ),
      );
    }
    throw UnimplementedError();
  }
}

class Special_InputButton extends StatelessWidget {
  final Function() onPressed;
  final Icon myIcon;
  final type;
  const Special_InputButton({
    super.key,
    this.type = 1,
    required this.onPressed,
    required this.myIcon,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    // TODO: implement build
    if (type == 1) {
      return Container(
        height: 9.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: myIcon,
          //color: AppColors.textcolor,
          //size: 9.w,
        ),
      );
    } else {
      return Container(
        height: 9.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor2,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: myIcon,
          //color: AppColors.textcolor,
          //size: 9.w,
        ),
      );
    }
  }
}

class Special_InputButton_mini extends StatelessWidget {
  final Function() onPressed;
  final Icon myIcon;
  final int type;
  const Special_InputButton_mini(
      {super.key,
      required this.onPressed,
      required this.myIcon,
      this.type = 1});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    if (type == 1) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor1,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.buttoncolor1,
            animationDuration: const Duration(milliseconds: 2500),
          ),
          child: myIcon,
          //color: AppColors.textcolor,
          //size: 9.w,
        ),
      );
    }
    if (type == 2) {
      return Container(
        height: 8.h,
        width: 17.w,
        decoration: BoxDecoration(
          color: AppColors.buttoncolor2,
          shape: BoxShape.circle,
        ),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: AppColors.buttoncolor2,
              animationDuration: const Duration(milliseconds: 2500),
            ),
            child: myIcon),
      );
    }

    throw UnimplementedError();
  }
}
