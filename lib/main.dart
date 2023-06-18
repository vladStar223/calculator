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

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
// TODO: implement build
// To make this screen full screen.
// It will hide status bar and notch.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MultiProvider(
      providers: [
       // Provider<peter1>(create: (_) => peter1()), я его закоментил
      ],
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
//backgroundColor: AppColors().fon,
        drawer: Drawer(
            child: new DrawerHeader(
          child: const Text("Заголовок меню"),
          decoration: BoxDecoration(color: Colors.green),
        )),
        appBar: AppBar(
          title: const Text("Уравнения"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.cabin))],
          leading: Builder(
            builder: (context) => // Ensure Scaffold is in context
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer()),
          ),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 35.sh,
                  width: 100.sw,
                  child: Padding(
                    padding: EdgeInsets.all(4.sh),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 0.2.sh,
            ),
            Container(
              height: 48.sh,
              width: 100.sw,
              child: Padding(
                padding: EdgeInsets.all(0.5.sh),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 0.4.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
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
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 8.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
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
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 8.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
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
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 8.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
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
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 9.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class peter1_BBOD_ELEVENTOB extends ChangeNotifier {

  double a = 0.0,
      b = 0.0,
      c = 0.0,
      d = 0.0; // переменные
  String a_text = '',
      b_text = '',
      c_text = '',
      d_text = ''; // текст с полей ввода для переменных
  bool a_trigger = false,
      c_trigger = false,
      b_trigger = false,
      d_trigger = false; // триггеры коэффицентов

  void A_trigger() {
    setState(() {
      a_trigger = true;
      b_trigger = false;
      c_trigger = false;
      d_trigger = false;
    });
  }

  void B_trigger() {
    setState(() {
      a_trigger = false;
      b_trigger = true;
      c_trigger = false;
      d_trigger = false;
    });
  }

  void C_trigger() {
    setState(() {
      a_trigger = false;
      b_trigger = false;
      c_trigger = true;
      d_trigger = false;
    });
  }

  void D_trigger() {
    setState(() {
      a_trigger = false;
      b_trigger = false;
      c_trigger = false;
      d_trigger = true;
    });
  }
// функции триггера

  void One_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '1';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '1';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '1';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '1';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '1';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '1';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '1';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '1';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '1';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '1';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '1';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '1';
        }
      }
    });
  }

  void Two_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '2';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '2';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '2';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '2';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '2';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '2';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '2';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '2';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '2';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '2';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '2';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '2';
        }
      }
    });
  }

  void Three_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '3';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '3';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '3';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '3';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '3';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '3';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '3';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '3';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '3';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '3';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '3';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '3';
        }
      }
    });
  }

  void Four_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '4';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '4';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '4';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '4';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '4';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '4';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '4';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '4';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '4';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '4';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '4';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '4';
        }
      }
    });
  }

  void Five_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '5';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '5';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '5';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '5';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '5';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '5';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '5';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '5';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '5';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '5';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '5';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '5';
        }
      }
    });
  }

  void Six_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '6';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '6';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '6';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '6';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '6';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '6';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '6';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '6';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '6';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '6';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '6';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '6';
        }
      }
    });
  }

  void Seven_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '7';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '7';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '7';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '7';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '7';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '7';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '7';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '7';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '7';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '7';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '7';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '7';
        }
      }
    });
  }

  void Eight_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '8';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '8';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '8';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '8';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '8';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '8';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '8';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '8';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '8';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '8';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '8';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '8';
        }
      }
    });
  }

  void Nine_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '9';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '9';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '9';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '9';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '9';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '9';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '9';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '9';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '9';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '9';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '9';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '9';
        }
      }
    });
  }

  void Null_press() {
    setState(() {
      if (a_trigger) {
        if (a_text.length < 6 && !a_text.contains('.') &&
            !a_text.contains('-')) {
          a_text += '0';
        } else if (a_text.length < 7 &&
            (a_text.contains('.') || a_text.contains('-'))) {
          a_text += '0';
        } else if (a_text.length < 8 &&
            (a_text.contains('.') && a_text.contains('-'))) {
          a_text += '0';
        }
      } else if (b_trigger) {
        if (b_text.length < 6 && !b_text.contains('.') &&
            !b_text.contains('-')) {
          b_text += '0';
        } else if (b_text.length < 7 &&
            (b_text.contains('.') || b_text.contains('-'))) {
          b_text += '0';
        } else if (b_text.length < 8 &&
            (b_text.contains('.') && b_text.contains('-'))) {
          b_text += '0';
        }
      } else if (c_trigger) {
        if (c_text.length < 6 && !c_text.contains('.') &&
            !c_text.contains('-')) {
          c_text += '0';
        } else if (c_text.length < 7 &&
            (c_text.contains('.') || c_text.contains('-'))) {
          c_text += '0';
        } else if (c_text.length < 8 &&
            (c_text.contains('.') && c_text.contains('-'))) {
          c_text += '0';
        }
      } else if (d_trigger) {
        if (d_text.length < 6 && !d_text.contains('.') &&
            !d_text.contains('-')) {
          d_text += '0';
        } else if (d_text.length < 7 &&
            (d_text.contains('.') || d_text.contains('-'))) {
          d_text += '0';
        } else if (d_text.length < 8 &&
            (d_text.contains('.') && d_text.contains('-'))) {
          d_text += '0';
        }
      }
    });
  }
  // ввод цифр идет при условии что текущая длина символов <6 (минус и запятая не в счет)

  void Delete_press() {
    setState(() {
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
    });
  }
  void Minus_press() {

//идет работа

  }
}

 */

