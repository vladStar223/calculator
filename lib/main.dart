import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/provider_class.dart';
import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/animated_class.dart';
import 'package:url_launcher/url_launcher.dart';

import 'alertDialog_widget.dart';

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

// TODO: implement build
// To make this screen full screen.
// It will hide status bar and notch.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final scaffoldKey = GlobalKey<ScaffoldState>();
    const displayName = "displayName";
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => input_number()),
        ChangeNotifierProvider(create: (context) => choose_button()),
      ],
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
        backgroundColor: AppColors().fon,
        key: scaffoldKey,
        drawer: Drawer(
            child: new DrawerHeader(
          child: const Text("Заголовок меню"),
          decoration: BoxDecoration(color: Colors.green),
        )),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    color: AppColors().white,
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: Icon(MyFlutterApp.menu_circle)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Калькулятор",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: AppColors().white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Уравнения",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: AppColors().white),
                  ),
                ),
                IconButton(
                    color: AppColors().white,
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
                  height: 50.sh,
                  width: 100.sw,
                  child: keyboard(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
          height: 1.sh,
        ),
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor1,
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
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "AC",
                  style: TextStyle(
                      color: AppColors().textcolor,
                      fontSize: 5.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor1,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Animated_first_screen();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "x²",
                    style: TextStyle(
                        color: AppColors().textcolor,
                        fontSize: 5.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor1,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Animated_second_screen();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "x³",
                    style: TextStyle(
                        color: AppColors().textcolor,
                        fontSize: 5.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor1,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Animated_third_screen();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "x⁴",
                    style: TextStyle(
                        color: AppColors().textcolor,
                        fontSize: 5.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
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
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("7");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "7",
                  style: TextStyle(
                      color: AppColors().textcolor2,
                      fontSize: 8.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("8");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "8",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("9");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "9",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Delete_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "Del",
                    style: TextStyle(
                        color: AppColors().textcolor,
                        fontSize: 5.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
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
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("4");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "4",
                  style: TextStyle(
                      color: AppColors().textcolor2,
                      fontSize: 8.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("5");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("6");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "6",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Minus_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "-",
                    style: TextStyle(
                        color: AppColors().textcolor,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
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
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("1");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "1",
                  style: TextStyle(
                      color: AppColors().textcolor2,
                      fontSize: 8.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("2");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("3");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor1,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("9");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(
                        color: AppColors().textcolor,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
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
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().AC_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "e",
                  style: TextStyle(
                      color: AppColors().textcolor2,
                      fontSize: 8.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor2,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Nums_press("0");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "0",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor1,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Comma_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor2,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    ".",
                    style: TextStyle(
                        color: AppColors().textcolor2,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.sh,
              width: 20.sw,
              decoration: BoxDecoration(
                color: AppColors().buttoncolor1,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<input_number>().Resuilt_anim_screen();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().buttoncolor1,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "=",
                    style: TextStyle(
                        color: AppColors().textcolor,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
