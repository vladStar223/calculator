import 'package:calculator/my_flutter_app_icons.dart';
import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        ChangeNotifierProvider(create: (context) => peter1_BBOD_ELEVENTOB()),
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
                SizedBox(height: 50.sh, width: 95.sw, child: cubic_equation()),
                SizedBox(height: 43.8.sh, width: 95.sw, child: keyboard()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class quadratic_equation extends StatefulWidget {
  const quadratic_equation({super.key});

  @override
  State<quadratic_equation> createState() => _quadratic_equationState();
}

class _quadratic_equationState extends State<quadratic_equation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: AppColors().black,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: 75.sw,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors().white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax^2 + bx - c",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: 40,
                            fontWeight: FontWeight.w200,
                            color: AppColors().orange),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 46,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Nokora",
                      color: AppColors().orange),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<peter1_BBOD_ELEVENTOB>().A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            Provider.of<peter1_BBOD_ELEVENTOB>(context).a_text,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors().orange,
                                fontSize: 26,
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Nokora",
                      color: AppColors().orange),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<peter1_BBOD_ELEVENTOB>().B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<peter1_BBOD_ELEVENTOB>(context).b_text,
                            style: TextStyle(
                                color: AppColors().orange,
                                fontSize: 26,
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Nokora",
                      color: AppColors().orange),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<peter1_BBOD_ELEVENTOB>().C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<peter1_BBOD_ELEVENTOB>(context).c_text,
                            style: TextStyle(
                                color: AppColors().orange,
                                fontSize: 26,
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}

class cubic_equation extends StatefulWidget {
  const cubic_equation({super.key});

  @override
  State<cubic_equation> createState() => _cubic_equationState();
}

class _cubic_equationState extends State<cubic_equation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: AppColors().black,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 30, 30),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: 75.sw,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors().white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "ax^3 + bx^2 + cx + d",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                            color: AppColors().orange),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "a = ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Nokora",
                      color: AppColors().orange),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<peter1_BBOD_ELEVENTOB>().A_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            Provider.of<peter1_BBOD_ELEVENTOB>(context).a_text,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: AppColors().orange,
                                fontSize: 26,
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "b = ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Nokora",
                      color: AppColors().orange),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<peter1_BBOD_ELEVENTOB>().B_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<peter1_BBOD_ELEVENTOB>(context).b_text,
                            style: TextStyle(
                                color: AppColors().orange,
                                fontSize: 26,
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "c = ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Nokora",
                      color: AppColors().orange),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<peter1_BBOD_ELEVENTOB>().C_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<peter1_BBOD_ELEVENTOB>(context).c_text,
                            style: TextStyle(
                                color: AppColors().orange,
                                fontSize: 26,
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "d = ",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Nokora",
                      color: AppColors().orange),
                ),
                Center(
                  child: Center(
                    child: Container(
                      width: 53.8.sw,
                      height: 5.1.sh,
                      decoration: BoxDecoration(
                        color: AppColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                        onPressed: () {
                          context.read<peter1_BBOD_ELEVENTOB>().D_trigger();
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            Provider.of<peter1_BBOD_ELEVENTOB>(context).d_text,
                            style: TextStyle(
                                color: AppColors().orange,
                                fontSize: 26,
                                fontFamily: "Nokora",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
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
    // TODO: implement build
    return Column(
      children: [
        Row(
          // тут нужна анимация
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 10.sh,
              width: 17.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "AC",
                  style: TextStyle(
                      color: AppColors().orange,
                      fontSize: 5.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("7");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "7",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("8");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "8",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("9");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "9",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Delete_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "Del",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 5.1.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ), //нужна анимация кнопки в провайдере есть цвет . нужно чтобы былол плавно
          ],
        ),
        SizedBox(
          height: 0.4.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 10.sh,
              width: 17.sw,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<choose_button>().change_color();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor:
                      Provider.of<choose_button>(context, listen: true)
                          .color_button,
                  animationDuration: const Duration(milliseconds: 300),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "x^4",
                  style: TextStyle(
                      color: AppColors().orange,
                      fontSize: 5.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("4");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("5");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("6");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "6",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 8.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Comma_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 14.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 0.4.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 10.sh,
              width: 17.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "x^3",
                  style: TextStyle(
                      color: AppColors().orange,
                      fontSize: 5.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("1");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("2");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("3");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 8.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Comma_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "-",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 13.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 0.4.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 10.sh,
              width: 17.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "x^2",
                  style: TextStyle(
                      color: AppColors().orange,
                      fontSize: 5.sw,
                      fontFamily: "Nokora"),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "e",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Nums_press("0");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "0",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Comma_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    ".",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 8.sw,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
            ),
            Container(
              height: 8.sh,
              width: 16.sw,
              decoration: BoxDecoration(
                color: AppColors().black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<peter1_BBOD_ELEVENTOB>().Comma_press();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: AppColors().black,
                  animationDuration: const Duration(milliseconds: 2500),
                ),
                child: Center(
                  child: Text(
                    "=",
                    style: TextStyle(
                        color: AppColors().orange,
                        fontSize: 14.sw,
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

class choose_button extends ChangeNotifier {
  Color _color_button1 = AppColors().black;
  Color _color_button2 = AppColors().white;
  Color color_button = AppColors().black;
  void change_color() {
    if (color_button == _color_button1) {
      color_button = _color_button2;
    } else {
      color_button = _color_button1;
    }
    notifyListeners();
  }
} //класс который отвечает за  смену цвета в кнопке

class peter1_BBOD_ELEVENTOB extends ChangeNotifier {
  @override
  double a = 0.0, b = 0.0, c = 0.0, d = 0.0; // переменные
  String a_text = '0',
      b_text = '0',
      c_text = '0',
      d_text = '0'; // текст с полей ввода для переменных
  bool a_trigger = false,
      c_trigger = false,
      b_trigger = false,
      d_trigger = false; // триггеры коэффицентов

  void A_trigger() {
    a_trigger = true;
    b_trigger = false;
    c_trigger = false;
    d_trigger = false;
    notifyListeners();
  }

  void B_trigger() {
    a_trigger = false;
    b_trigger = true;
    c_trigger = false;
    d_trigger = false;
    notifyListeners();
  }

  void C_trigger() {
    a_trigger = false;
    b_trigger = false;
    c_trigger = true;
    d_trigger = false;
    notifyListeners();
  }

  void D_trigger() {
    a_trigger = false;
    b_trigger = false;
    c_trigger = false;
    d_trigger = true;
    notifyListeners();
  }

// функции триггера

  void Nums_press(String enternumber) {
    if (a_trigger) {
      if (a_text.length < 6 && !a_text.contains('.') && !a_text.contains('-')) {
        a_text += enternumber;
      } else if (a_text.length < 7 &&
          (a_text.contains('.') || a_text.contains('-'))) {
        a_text += enternumber;
      } else if (a_text.length < 8 &&
          (a_text.contains('.') && a_text.contains('-'))) {
        a_text += enternumber;
      }
    } else if (b_trigger) {
      if (b_text.length < 6 && !b_text.contains('.') && !b_text.contains('-')) {
        b_text += enternumber;
      } else if (b_text.length < 7 &&
          (b_text.contains('.') || b_text.contains('-'))) {
        b_text += enternumber;
      } else if (b_text.length < 8 &&
          (b_text.contains('.') && b_text.contains('-'))) {
        b_text += enternumber;
      }
    } else if (c_trigger) {
      if (c_text.length < 6 && !c_text.contains('.') && !c_text.contains('-')) {
        c_text += enternumber;
      } else if (c_text.length < 7 &&
          (c_text.contains('.') || c_text.contains('-'))) {
        c_text += enternumber;
      } else if (c_text.length < 8 &&
          (c_text.contains('.') && c_text.contains('-'))) {
        c_text += enternumber;
      }
    } else if (d_trigger) {
      if (d_text.length < 6 && !d_text.contains('.') && !d_text.contains('-')) {
        d_text += enternumber;
      } else if (d_text.length < 7 &&
          (d_text.contains('.') || d_text.contains('-'))) {
        d_text += enternumber;
      } else if (d_text.length < 8 &&
          (d_text.contains('.') && d_text.contains('-'))) {
        d_text += enternumber;
      }
    }
    notifyListeners();
  }

  // ввод цифр идет при условии что текущая длина символов <6 (минус и запятая не в счет)
  // при вызове onPressed надо передать значение цифры через анонимную функцию

  void Delete_press() {
    if (a_trigger) {
      if (a_text.isNotEmpty) {
        a_text = a_text.substring(0, a_text.length - 1);
      }
    } else if (b_trigger) {
      if (b_text.isNotEmpty) {
        b_text = b_text.substring(0, b_text.length - 1);
      }
    } else if (c_trigger) {
      if (c_text.isNotEmpty) {
        c_text = c_text.substring(0, c_text.length - 1);
      }
    } else if (d_trigger) {
      if (d_text.isNotEmpty) {
        d_text = d_text.substring(0, d_text.length - 1);
      }
    }
    notifyListeners();
  }

  void Minus_press() {
    if (a_trigger) {
      if (a_text.length < 8 && !a_text.contains('-')) {
        a_text = '-' + a_text;
      } else if (a_text.contains('-')) {
        a_text = a_text.substring(1, a_text.length);
      }
    } else if (b_trigger) {
      if (b_text.length < 8 && !b_text.contains('-')) {
        b_text = '-' + b_text;
      } else if (b_text.contains('-')) {
        b_text = b_text.substring(1, b_text.length);
      }
    } else if (c_trigger) {
      if (c_text.length < 8 && !c_text.contains('-')) {
        c_text = '-' + c_text;
      } else if (c_text.contains('-')) {
        c_text = c_text.substring(1, c_text.length);
      }
    } else if (d_trigger) {
      if (d_text.length < 8 && !d_text.contains('-')) {
        d_text = '-' + d_text;
      } else if (d_text.contains('-')) {
        d_text = d_text.substring(1, d_text.length);
      }
    }
    notifyListeners();
  }

  void Comma_press() {
    if (a_trigger) {
      if (!a_text.contains('.')) {
        a_text += '.';
      }
    } else if (b_trigger) {
      if (!b_text.contains('.')) {
        b_text += '.';
      }
    } else if (c_trigger) {
      if (!c_text.contains('.')) {
        c_text += '.';
      }
    } else if (d_trigger) {
      if (!d_text.contains('.')) {
        d_text += '.';
      }
    }
  }

  notifyListeners();
}

class peter1_PEWEHUE extends ChangeNotifier {}
