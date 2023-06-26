import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/provider_class.dart';
import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/animated_class.dart';

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
    const displayName = "displayName";
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => input_number()),
        ChangeNotifierProvider(create: (context) => choose_button()),
        ChangeNotifierProvider(create: (context) => decision_urv()),
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
                Text(
                  "Уравнения",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: AppColors().white),
                ),
                IconButton(
                    color: AppColors().white,
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
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
                    "x^2",
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
                    "x^3",
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
                    "x^4",
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
                  context.read<input_number>().Nums_press("9");
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

/* новая
было добавленно длинное нажатие на кнопку  для очистки всего
был создан отдельный фаил с анимациями для удобства и уменьшения размеров гдавного фаила
исправляются и исправлены ошибки

*/

/* прошлая версия
БЫЛИ ДОБАВЛЕНЫ:
АНИМИРОВАННЫЙ ЭКРАН ДЛЯ Х^2 (РАБОЧИЙ)
АНИМИРОВАННЫЙ ЭКРАН ДЛЯ Х^3 (РАБОЧИЙ)
АНИМИРОВАННЫЙ ЭКРАН ДЛЯ Х^4 (БЕЗ ВЕРСТКИ)

КЛАССЫ ДЛЯ НИХ ВСЕХ
НОВЫЕ ФУНКЦИИ (БЫЛА ДОБАВЛЕНА ДЛЯ КНОПКИ АС)
---------------------------------------
ТЕПЕРЬ НУЛИ НЕЛЬЗЯ УДАЛИТЬ НИКАК (НАВЕРНОЕ)
ТЕПЕРЬ НУЛИ ПОЯВЛЯЮТСЯ ЕСЛИ ДРУГАЯ ЦИФРА БЫЛА УДАЛЕНА (ПРИ ВВОДЕ В ОБОРОТ ФУНКЦИИ МИНУСА МОГУТ ВОЗНИКНУТЬ БАГИ, Я НЕ ПРОВЕРЯЛ)
была нарушена целостность положения экрана, но это решается легко и я устал
вроде все
 */
