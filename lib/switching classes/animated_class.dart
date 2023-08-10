import 'package:calculator/provider/provider_class.dart';
import 'package:calculator/screens/result.dart';
import 'package:calculator/screens/screens_equations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/decision_urv.dart';
import '../provider/input_class.dart';

/*
class peter1_PEWEHUE extends ChangeNotifier {} // это неизвестно зачем существует, оно бесполезное


class resuilt_animated_screen extends StatefulWidget {
  const resuilt_animated_screen({super.key});

  @override
  State<resuilt_animated_screen> createState() =>
      resuilt_animated_screenState();
} // не используется
class resuilt_animated_screenState extends State<resuilt_animated_screen> {
  //написать чтобы понимало какой из классов ответа вызвать
  @override
  Widget build(BuildContext context) {
    final animated = Provider.of<input_number>(context);
    print(animated.urv2);
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
} //не  используется
*/

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final animated = Provider.of<Input_number_equations>(context);

    return AnimatedContainer(
      duration: const Duration(seconds: 100),
      child: Stack(
        children: [
          AnimatedScreenItem(
            opacity: animated.active_input_screen[0] ? 1 : 0,
            ignoring: animated.active_input_screen[0] ? false : true,
            child: const quadratic_equation(), //показывает ввод х2 уравнение
          ),
          AnimatedScreenItem(
            opacity: animated.active_input_screen[1] ? 1 : 0,
            ignoring: animated.active_input_screen[1] ? false : true,
            child: const cubic_equation(), // показывает ввод х3 уравнение
          ),
          AnimatedScreenItem(
            opacity: animated.active_input_screen[2] ? 1 : 0,
            ignoring: animated.active_input_screen[2] ? false : true,
            child: const biquadrate_equation(), //показывает ввод х4 уравнение
          ),
          AnimatedScreenItem(
            opacity: animated.active_resuilt_screen[0] ? 1 : 0,
            ignoring: animated.active_resuilt_screen[0] ? false : true,
            child: resuilt(), //показывает результаты х2 уравнения
          ),
          AnimatedScreenItem(
            opacity: animated.active_resuilt_screen[1] ? 1 : 0,
            ignoring: animated.active_resuilt_screen[1] ? false : true,
            child: resuilt_urv3(), //показывает результаты х3 уравнения
          ),
          AnimatedScreenItem(
            opacity: animated.active_resuilt_screen[2] ? 1 : 0,
            ignoring: animated.active_resuilt_screen[2] ? false : true,
            child: resuilt_urv4(), //показывает результаты х4 уравнения
          ),
        ],
      ),
    );
  }
}

class AnimatedScreenItem extends StatelessWidget {
  final double opacity;
  final bool ignoring;
  final Widget child;

  const AnimatedScreenItem({
    super.key,
    required this.opacity,
    required this.ignoring,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignoring,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: opacity,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
