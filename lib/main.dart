import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:calculator/provider/provider_class.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/switching%20classes/animated_class.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dialog/alertDialog_widget.dart';

//начало программы
void main() {
  runApp(Provider(
    create: (BuildContext context) {},
    child: ResponsiveApp(
      builder: (context) => MaterialApp(
// код для создание переключения между монолитными виджетами
// дальше   инцилизируется библиотеки для передачи данных

        initialRoute: '/',
        routes: {
          '/': (context) => const Main(),
        },
      ),
    ),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
// To make this screen full screen.
// It will hide status bar and notch.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => input_number()),
      ChangeNotifierProvider(create: (context) => choose_button()),
      ChangeNotifierProvider(create: (context) => AppColor()),
    ], child: screen_normal());
  }
}

class screen_normal extends StatefulWidget {
  @override
  State<screen_normal> createState() => _screen_normalState();
}

class _screen_normalState extends State<screen_normal> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    const displayName = "displayName";
    final scaffoldKey = GlobalKey<ScaffoldState>();
    _showDialog(BuildContext context) {
      VoidCallback continueCallBack = () => {
            Navigator.of(context).pop(),
            // code on continue comes here
          };
      BlurryDialog alert = BlurryDialog(
          "Сообщение",
          "Для подробной информации перейдите на  интернет ресурс",
          continueCallBack);

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      key: scaffoldKey,
      drawer: Drawer(
          child: DrawerHeader(
        child: Column(
          children: [
            Text(
              "Калькулятор",
              style: TextStyle(
                  fontFamily: "Nokora",
                  fontSize: 10.sw,
                  fontWeight: FontWeight.w200,
                  color: AppColors.buttoncolor1),
            ),
            SizedBox(
              height: 2.5.sh,
            ),
            SizedBox(
              width: 100.sw,
              child: TextButton(
                onPressed: () {
                  scaffoldKey.currentState!.closeDrawer();
                  print("ddd");
                },
                child: Text(
                  "Вернуться",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: AppColors.buttoncolor1),
                ),
              ),
            ),
            SizedBox(
              width: 100.sw,
              child: TextButton(
                onPressed: () {
                  AppColors.Change_color();
                },
                child: Text(
                  "Вернуться",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: AppColors.buttoncolor1),
                ),
              ),
            ),
          ],
        ),
      )),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  color: AppColors.textcolorfortop,
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(MyFlutterApp.menu_circle)),
              IconButton(
                  color: AppColors.textcolorfortop,
                  onPressed: () {
                    print("dd");
                  },
                  icon: Icon(MyFlutterApp.calculator_icon_icons_com_66651)),
              IconButton(
                  color: AppColors.textcolorfortop,
                  onPressed: () {
                    print("dd");
                  },
                  icon: Icon(
                    MyFlutterApp.functions_icon_144317,
                    color: AppColors.white,
                  )),
              IconButton(
                  color: AppColors.textcolorfortop,
                  onPressed: () {
                    _showDialog(context);
                  },
                  icon: Icon(MyFlutterApp.question_circle)),
            ],
          ),
          Column(
            children: [
              Stack(
                children: [
                  first_animated_screen(),
                  second_animated_screen(),
                  third_animated_screen(),
                  resuilt_animated_screen(),
                  first_resuilt_animated_screen(),
                  second_resuilt_animated_screen(),
                  third_resuilt_animated_screen(),
                ], //АНИМАЦИИ
              ),
              SizedBox(
                height: 49.7.sh,
                width: 100.sw,
                child: keyboard(),
              ),
            ],
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}

class inputButton extends StatefulWidget {
  final Function() onPressed;
  final int type;
  final String number;
  final double font;
  const inputButton({
    super.key,
    required this.type,
    required this.onPressed,
    required this.number,
    this.font = 5.4,
  });
  @override
  State<inputButton> createState() => _inputButtonState();
}

class _inputButtonState extends State<inputButton> {
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
    throw UnimplementedError();
  }
}

class keyboard extends StatefulWidget {
  @override
  State<keyboard> createState() => _keyboardState();
}

class _keyboardState extends State<keyboard> {
  @override
  Widget build(BuildContext context) {
    final animation = Provider.of<input_number>(context);
    // используешь это удобно но когда все вместе такое
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
          height: 0.7.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            inputButton(
              onPressed: () {},
              type: 3,
              number: "AC",
            ),
            inputButton(
              onPressed: () {
                context.read<input_number>().Animated_first_screen();
              },
              type: 2,
              number: "x²",
            ),
            inputButton(
              onPressed: () {
                context.read<input_number>().Animated_second_screen();
              },
              type: 2,
              number: "x³",
            ),
            inputButton(
              onPressed: () {
                context.read<input_number>().Animated_third_screen();
              },
              type: 2,
              number: "x⁴",
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("7");
                },
                type: 1,
                number: "7",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("8");
                },
                type: 1,
                number: "8",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("9");
                },
                type: 1,
                number: "9",
                font: 8.0),
            inputButton(
              onPressed: () {
                context.read<input_number>().Delete_press();
              },
              type: 2,
              number: "Del",
            ),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("4");
                },
                type: 1,
                number: "4",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("5");
                },
                type: 1,
                number: "5",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("6");
                },
                type: 1,
                number: "6",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Minus_press();
                },
                type: 2,
                number: "-",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("1");
                },
                type: 1,
                number: "1",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("2");
                },
                type: 1,
                number: "2",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("3");
                },
                type: 1,
                number: "3",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Minus_press();
                },
                type: 2,
                number: "+",
                font: 8.0),
          ],
        ),
        SizedBox(
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("e");
                },
                type: 1,
                number: "e",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("0");
                },
                type: 1,
                number: "0",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Nums_press(".");
                },
                type: 1,
                number: ".",
                font: 8.0),
            inputButton(
                onPressed: () {
                  context.read<input_number>().Resuilt_anim_screen();
                },
                type: 2,
                number: "=",
                font: 8.0),
          ],
        ),
      ],
    );
  }
}
