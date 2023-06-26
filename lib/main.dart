import 'package:calculator/my_flutter_app_icons.dart';
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
                  context.read<choose_button>().change_color(0);
                  context.read<input_number>().Animated_first_screen();
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor:
                      Provider.of<choose_button>(context, listen: true)
                          .color_button,  animationDuration: const Duration(milliseconds: 2500),
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
                  context.read<choose_button>().change_color(1);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor:
                      Provider.of<choose_button>(context).color_button1,
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
                  context.read<choose_button>().change_color(2);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor:
                      Provider.of<choose_button>(context).color_button2,
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

class choose_button extends ChangeNotifier {
  Color _color_button1 = AppColors().buttoncolor1;
  Color _color_button2 = AppColors().buttoncolor2;
  Color color_button = AppColors().buttoncolor2;
  Color color_button1 = AppColors().buttoncolor1;
  Color color_button2 = AppColors().buttoncolor1;
  void change_color(int number) {
    if (number == 0) {
      if (color_button == _color_button1) {
        color_button = _color_button2;
        color_button1 = _color_button1;
        color_button2 = _color_button1;
      } else {
        color_button = _color_button1;
      }
    }
    if (number == 1) {
      if (color_button1 == _color_button1) {
        color_button1 = _color_button2;
        color_button = _color_button1;
        color_button2 = _color_button1;
      } else {
        color_button1 = _color_button1;
      }
    }
    if (number == 2) {
      if (color_button2 == _color_button1) {
        color_button2 = _color_button2;
        color_button = _color_button1;
        color_button1 = _color_button1;
      } else {
        color_button2 = _color_button1;
      }
    }
    notifyListeners();
  }
} //класс который отвечает за  смену цвета в кнопке

class input_number extends ChangeNotifier {
  @override
  double a = 0.0, b = 0.0, c = 0.0, d = 0.0; // переменные
  bool longtap =
      false; // переменная отвечает за AC если она зажата то очищается все ,а не только одно
  String a_text = '0',
      b_text = '0',
      c_text = '0',
      d_text = '0'; // текст с полей ввода для переменных
  bool a_trigger = true,
      c_trigger = false,
      b_trigger = false,
      d_trigger = false; // триггеры коэффицентов
  bool first_anim_screen = true,
      second_anim_screen = false,
      third_anim_screen = false,
      resuilt_anim_screen = false; // БУЛЬКИ ДЛЯ АНИМАЦИЙ

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

  void Animated_first_screen() {
    first_anim_screen = true;
    second_anim_screen = false;
    third_anim_screen = false;
    resuilt_anim_screen = false;
    a_text = '0';
    b_text = '0';
    c_text = '0';
    d_text = '0';
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА Х^2
  }

  void Animated_second_screen() {
    first_anim_screen = false;
    second_anim_screen = true;
    third_anim_screen = false;
    resuilt_anim_screen = false;
    a_text = '0';
    b_text = '0';
    c_text = '0';
    d_text = '0';
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА Х^3
  }

  void Animated_third_screen() {
    first_anim_screen = false;
    second_anim_screen = false;
    third_anim_screen = true;
    resuilt_anim_screen = false;
    a_text = '0';
    b_text = '0';
    c_text = '0';
    d_text = '0';
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА Х^4 (ДОБАВЬ)
  }

  void Resuilt_anim_screen() {
    first_anim_screen = false;
    second_anim_screen = false;
    third_anim_screen = false;
    resuilt_anim_screen = true;
    notifyListeners(); //ФУНКЦИЯ ПРИ НАЖАТИИ НА РАВНО (ДОБАВЬ)
  }

  void Nums_press(String enternumber) {
    if (a_trigger) {
      if (a_text.length == 1 && a_text.indexOf('0') == 0) {
        a_text = '';
        if (a_text.length < 10 &&
            !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += enternumber;
        } else if (a_text.length < 11 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += enternumber;
        } else if (a_text.length < 12 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += enternumber;
        }
      } else if (a_text.length < 10 &&
          !a_text.contains('.') &&
          !a_text.contains('-')) {
        a_text += enternumber;
      } else if (a_text.length < 11 &&
          (a_text.contains('.') || a_text.contains('-'))) {
        a_text += enternumber;
      } else if (a_text.length < 12 &&
          (a_text.contains('.') && a_text.contains('-'))) {
        a_text += enternumber;
      }
    }
    if (b_trigger) {
      if (b_text.length == 1 && b_text.indexOf('0') == 0) {
        b_text = '';
        if (b_text.length < 10 &&
            !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += enternumber;
        } else if (b_text.length < 11 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += enternumber;
        } else if (b_text.length < 12 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += enternumber;
        }
      } else if (b_text.length < 10 &&
          !b_text.contains('.') &&
          !b_text.contains('-')) {
        b_text += enternumber;
      } else if (b_text.length < 11 &&
          (b_text.contains('.') || b_text.contains('-'))) {
        b_text += enternumber;
      } else if (b_text.length < 12 &&
          (b_text.contains('.') && b_text.contains('-'))) {
        b_text += enternumber;
      }
    }
    if (c_trigger) {
      if (c_text.length == 1 && c_text.indexOf('0') == 0) {
        c_text = '';
        if (c_text.length < 10 &&
            !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += enternumber;
        } else if (c_text.length < 11 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += enternumber;
        } else if (c_text.length < 12 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += enternumber;
        }
      } else if (c_text.length < 10 &&
          !c_text.contains('.') &&
          !c_text.contains('-')) {
        c_text += enternumber;
      } else if (c_text.length < 11 &&
          (c_text.contains('.') || c_text.contains('-'))) {
        c_text += enternumber;
      } else if (c_text.length < 12 &&
          (c_text.contains('.') && c_text.contains('-'))) {
        c_text += enternumber;
      }
    }
    if (d_trigger) {
      if (d_text.length == 1 && d_text.indexOf('0') == 0) {
        d_text = '';
        if (d_text.length < 10 &&
            !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += enternumber;
        } else if (d_text.length < 11 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += enternumber;
        } else if (d_text.length < 12 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += enternumber;
        }
      } else if (d_text.length < 10 &&
          !d_text.contains('.') &&
          !d_text.contains('-')) {
        d_text += enternumber;
      } else if (d_text.length < 11 &&
          (d_text.contains('.') || d_text.contains('-'))) {
        d_text += enternumber;
      } else if (d_text.length < 12 &&
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
      if (a_text.length > 0) {
        if (a_text[a_text.length - 1] == '.') {
          a_text = a_text.substring(0, a_text.length - 1);
        } else {
          a_text = a_text.substring(0, a_text.length - 1);
          if (a_text.isEmpty) {
            a_text = '0';
          }
        }
      }
    } else if (b_trigger) {
      if (b_text.length > 0) {
        if (b_text[b_text.length - 1] == '.') {
          b_text = b_text.substring(0, b_text.length - 1);
        } else {
          b_text = b_text.substring(0, b_text.length - 1);
          if (b_text.isEmpty) {
            b_text = '0';
          }
        }
      }
    } else if (c_trigger) {
      if (c_text.length > 0) {
        if (c_text[c_text.length - 1] == '.') {
          c_text = c_text.substring(0, c_text.length - 1);
        } else {
          c_text = c_text.substring(0, c_text.length - 1);
          if (c_text.isEmpty) {
            c_text = '0';
          }
        }
      }
    } else if (d_trigger) {
      if (d_text.length > 0) {
        if (d_text[d_text.length - 1] == '.') {
          d_text = d_text.substring(0, d_text.length - 1);
        } else {
          d_text = d_text.substring(0, d_text.length - 1);
          if (d_text.isEmpty) {
            d_text = '0';
          }
        }
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
    notifyListeners();
  }

  void AC_press() {
    if (longtap == false) {
      if (a_trigger) {
        a_text = '0';
      } else if (b_trigger) {
        b_text = '0';
      } else if (c_trigger) {
        c_text = '0';
      } else if (d_trigger) {
        d_text = '0';
      }
    } else {
      a_text = '0';
      b_text = '0';
      c_text = '0';
      d_text = '0';
      longtap = false;
    }

    notifyListeners();
  }

  void setlongtap_ac() {
    if (longtap == true) {
      longtap = false;
    } else {
      longtap = true;
    }
    notifyListeners();
  } // BUTTON OF TOTAL DELETE SELECTED VARIABLE (AC Button)
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
