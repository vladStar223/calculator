import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/provider_class.dart';
import 'package:calculator/screens/result.dart';
import 'package:calculator/screens/screens_equations.dart';
import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/main.dart';

class peter1_PEWEHUE extends ChangeNotifier {}

class first_animated_screen extends StatefulWidget {
  const first_animated_screen({super.key});

  @override
  State<first_animated_screen> createState() => first_animated_screenState();
}

class first_animated_screenState extends State<first_animated_screen> {
  @override
  Widget build(BuildContext context) {
    final animated = Provider.of<input_number>(context);
    return IgnorePointer(
      ignoring: animated.first_anim_screen ? false : true,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: animated.first_anim_screen ? 1 : 0,
        child: Center(
            child: SizedBox(
                height: 43.39.sh, width: 95.sw, child: quadratic_equation())),
      ),
    );
  }
} //КЛАСС ДЛЯ УРАВНЕНИЙ Х^2

class second_animated_screen extends StatefulWidget {
  const second_animated_screen({super.key});

  @override
  State<second_animated_screen> createState() => second_animated_screenState();
}

class second_animated_screenState extends State<second_animated_screen> {
  @override
  Widget build(BuildContext context) {
    final animated = Provider.of<input_number>(context);
    return IgnorePointer(
      ignoring: animated.second_anim_screen ? false : true,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: animated.second_anim_screen ? 1 : 0,
        child: Center(
            child: SizedBox(
                height: 43.46.sh, width: 95.sw, child: cubic_equation())),
      ),
    );
  }
} // КЛАСС ДЛЯ УРАВНЕНИЙ Х^3

class third_animated_screen extends StatefulWidget {
  const third_animated_screen({super.key});

  @override
  State<third_animated_screen> createState() => third_animated_screenState();
}

class third_animated_screenState extends State<third_animated_screen> {
  @override
  Widget build(BuildContext context) {
    final animated = Provider.of<input_number>(context);
    return IgnorePointer(
      ignoring: animated.third_anim_screen ? false : true,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: animated.third_anim_screen ? 1 : 0,
        child: Center(
            child: SizedBox(
                height: 43.39.sh, width: 95.sw, child: biquadrate_equation())),
      ),
    );
  }
} // КЛАСС ДЛЯ УРАВНЕНИЙ Х^4

class resuilt_animated_screen extends StatefulWidget {
  const resuilt_animated_screen({super.key});

  @override
  State<resuilt_animated_screen> createState() =>
      resuilt_animated_screenState();
}

class resuilt_animated_screenState extends State<resuilt_animated_screen> {
  //написать чтобы понимало какой из классов ответа вызвать
  @override
  Widget build(BuildContext context) {
    final animated = Provider.of<input_number>(context);
    return IgnorePointer(
      ignoring: animated.resuilt_anim_screen ? false : true,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: animated.resuilt_anim_screen ? 1 : 0,
        child: Center(
          child: SizedBox(
              height: 43.39.sh,
              width: 95.sw,
              child: Builder(builder: (context) {
                /// some operation here ...
                if (animated.urv2 == true) {
                  return resuilt();
                } else {
                  if (animated.urv3 == true) {
                    return resuilt_urv3();
                  } else {
                    return resuilt_urv4();
                  }
                }
              })),
        ),
      ),
    );
  }
}
