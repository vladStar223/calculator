import 'package:calculator/provider/%D1%81hange_of_function.dart';
import 'package:calculator/provider/decision_urv.dart';
import 'package:calculator/provider/input_class.dart';
import 'package:calculator/screens/buttons.dart';
import 'package:calculator/screens/dialog/about_program.dart';
import 'package:calculator/screens/dialog/alertDialog_widget.dart';
import 'package:calculator/screens/keyboard.dart';
import 'package:calculator/screens/screens_calculator.dart';
import 'package:calculator/switching%20classes/animated_class.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

//начало программы
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    Provider(
      create: (BuildContext context) {},
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
// код для создание переключения между монолитными виджетами
// дальше   инцилизируется библиотеки для передачи данных

          initialRoute: '/',
          routes: {
            '/': (context) => const Main(),
          },
        );
      }),
    ),
  );
}

// должно работать
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
      ChangeNotifierProvider(create: (context) => Change_of_function()),
      ChangeNotifierProvider(create: (context) => AppColor()),
      ChangeNotifierProvider(create: (context) => Input_number_calculator()),
      ChangeNotifierProvider(create: (context) => Input_number_equations()),
      ChangeNotifierProxyProvider<Input_number_equations, Decision_urv>(
        // first, create the _proxy_ object, the one that you'll use in your UI
        // at this point, you will have access to the previously provided objects
        create: (context) => Decision_urv(
            Provider.of<Input_number_equations>(context, listen: false)),
        update: (context, Input_number_equations inputNumberEquations,
            decisionUrv) {
          return Decision_urv(inputNumberEquations);
        },
      ),
    ], child: screen_normal());
  }
}

class screen_normal extends StatefulWidget {
  const screen_normal({super.key});

  @override
  State<screen_normal> createState() => _screen_normalState();
}

class _screen_normalState extends State<screen_normal> {
  var _future;
  @override
  void initState() {
    // TODO: implement initState
    _future = doSomeAsyncStuff();
    super.initState();
  }

  Future<void> doSomeAsyncStuff() async {
    Provider.of<AppColor>(context, listen: false).initType();
    print("no");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    var changeOfFunction = Provider.of<Change_of_function>(context);
    var typeChoose =
        Provider.of<Input_number_equations>(context).active_resuilt_screen;
    var Number_calculator = Provider.of<Input_number_calculator>(context);
    const displayName = "displayName";
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    _getInfo() {
      PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
        appName = packageInfo.appName;
        packageName = packageInfo.packageName;
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    } // получает для глобальных переменных значения

// Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
    double height2 = height - padding.top;

// Height (without status and toolbar)
    double height3 = height - padding.top - kToolbarHeight;
// использовать для получения размера экрана
    return FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (ConnectionState.done != snapshot.connectionState) {
            // Future hasn't finished yet, return a placeholder
            return Center(child: Text('Loading'));
          }
          return Builder(builder: (context) {
            if (Provider.of<AppColor>(context).x == true) {
              Provider.of<AppColor>(context).Change_color();
              _getInfo();
              return View_editer();
            } else {
              return View_editer();
            }
          });
        });
    throw UnimplementedError();
  }
}

class View_editer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    const displayName = "displayName";
    var changeOfFunction = Provider.of<Change_of_function>(context);
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var typeChoose =
        Provider.of<Input_number_equations>(context).active_resuilt_screen;
    _showDialog(BuildContext context) {
      VoidCallback continueCallBack = () => {
            Navigator.of(context).pop(),
            // code on continue comes here
          };
      BlurryDialog alert = BlurryDialog(
          "Сообщение",
          "Для подробной информации перейдите на  интернет ресурс",
          continueCallBack,
          typeChoose,
          changeOfFunction.calculator);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    } // открывает диалог в верней панели

    _showDialog1(BuildContext context) {
      VoidCallback continueCallBack = () => {
            Navigator.of(context).pop(),
            // code on continue comes here
          };
      About_programm alert = About_programm(continueCallBack);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    } // открывает диалог в меню

// Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
    double height2 = height - padding.top;

// Height (without status and toolbar)
    double height3 = height - padding.top - kToolbarHeight;
    var Number_calculator = Provider.of<Input_number_calculator>(context);
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      key: scaffoldKey,
      drawer: Drawer(
          backgroundColor: AppColors.fon,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 100,
                child: DrawerHeader(
                  margin: EdgeInsets.zero,
                  child: Center(
                    child: Text(
                      "Калькулятор",
                      style: TextStyle(
                          fontFamily: "Nokora",
                          fontSize: 30,
                          fontWeight: FontWeight.w200,
                          color: AppColors.textcolor),
                    ),
                  ),
                ),
              ),
              ListTile(
                  title: Text(
                    "Вернуться",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  leading: Icon(Icons.exit_to_app_outlined,
                      color: AppColors.textcolor),
                  onTap: () {
                    scaffoldKey.currentState!.closeDrawer();
                  }),
              if (AppColors.type == 1)
                ListTile(
                    title: Text(
                      "Сменить тему ",
                      style: TextStyle(
                          fontFamily: "Nokora",
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: AppColors.textcolor),
                    ),
                    leading:
                        Icon(MyFlutterApp.wb_sunny, color: AppColors.textcolor),
                    onTap: () {
                      AppColors.Change_color();
                    }),
              if (AppColors.type == 0)
                ListTile(
                    title: Text(
                      "Сменить тему ",
                      style: TextStyle(
                          fontFamily: "Nokora",
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: AppColors.textcolor),
                    ),
                    leading:
                        Icon(MyFlutterApp.moon_inv, color: AppColors.textcolor),
                    onTap: () {
                      AppColors.Change_color();
                    }),
              ListTile(
                  title: Text(
                    "Калькулятор",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  leading: Icon(MyFlutterApp.calculator_icon_icons_com_66651,
                      color: AppColors.textcolor),
                  onTap: () {
                    changeOfFunction.change_state_calculator();
                  }),
              ListTile(
                  title: Text(
                    "Функции",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  leading: Icon(MyFlutterApp.functions_icon_144317,
                      color: AppColors.textcolor),
                  onTap: () {
                    changeOfFunction.change_state_equation_function();
                  }),
              ListTile(
                  title: Text(
                    "О программе",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: AppColors.textcolor),
                  ),
                  leading: Icon(MyFlutterApp.github_circled,
                      color: AppColors.textcolor),
                  onTap: () {
                    _showDialog1(context);
                  }),
            ],
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
                    changeOfFunction.change_state_calculator();
                  },
                  icon: Icon(MyFlutterApp.calculator_icon_icons_com_66651)),
              IconButton(
                  color: AppColors.textcolorfortop,
                  onPressed: () {
                    changeOfFunction.change_state_equation_function();
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
          Builder(builder: (context) {
            // отвечает за провекру что показывать
            /// some operation here ...
            if (changeOfFunction.sta_calculator == true) {
              return Column(
                children: [
                  SizedBox(
                    height: height / 2.25,
                    width: width,
                    child: Column(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Builder(builder: (context) {
                                  /// some operation here ...
                                  if (Number_calculator.decide == true) {
                                    return Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Flexible(
                                              child: FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  textAlign: TextAlign.right,
                                                  Number_calculator.count,
                                                  style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 45,
                                                      fontFamily: "Nokora",
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Flexible(
                                              child: FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  textAlign: TextAlign.right,
                                                  Number_calculator.result,
                                                  style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 45,
                                                      fontFamily: "Nokora",
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  } else {
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Flexible(
                                          child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              Number_calculator.count,
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 45,
                                                  fontFamily: "Nokora",
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                }),
                                Container(
                                  width: width,
                                  height: height / 300,
                                  color: AppColors.textcolor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 2,
                    width: width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          // тут нужна анимация
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InputButton(
                              onPressed: () {},
                              type: 4,
                              number: "AC",
                            ),
                            InputButton(
                              onPressed: () {
                                context
                                    .read<Input_number_calculator>()
                                    .delete_press();
                              },
                              type: 2,
                              number: "Del",
                            ),
                            Special_InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .multiplication();
                                },
                                myIcon: Icon(MyFlutterApp.svg_editor_image__1_,
                                    color: AppColors.textcolor, size: 5.w)),
                            Special_InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .division();
                                },
                                myIcon: Icon(MyFlutterApp.desions_,
                                    color: AppColors.textcolor, size: 5)),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          // тут нужна анимация
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("7");
                                },
                                type: 1,
                                number: "7",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("8");
                                },
                                type: 1,
                                number: "8",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("9");
                                },
                                type: 1,
                                number: "9",
                                font: 8.0),
                            Special_InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .multiplication();
                                },
                                myIcon: Icon(
                                    MyFlutterApp
                                        .multiplication_tbget5tyleyh, // знак проценатп
                                    color: AppColors.textcolor,
                                    size: 9.w)),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          // тут нужна анимация
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("4");
                                },
                                type: 1,
                                number: "4",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("5");
                                },
                                type: 1,
                                number: "5",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("6");
                                },
                                type: 1,
                                number: "6",
                                font: 8.0),
                            Special_InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .minus_press();
                                },
                                myIcon: Icon(
                                    MyFlutterApp
                                        .minus_uk9l2bpabquc, // знак проценатп
                                    color: AppColors.textcolor,
                                    size: 5.w)),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          // тут нужна анимация
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("1");
                                },
                                type: 1,
                                number: "1",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("2");
                                },
                                type: 1,
                                number: "2",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("3");
                                },
                                type: 1,
                                number: "3",
                                font: 8.0),
                            Special_InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .plus_press();
                                },
                                myIcon: Icon(
                                    MyFlutterApp
                                        .plus_fx7mv1cmdi3i, // знак проценатп
                                    color: AppColors.textcolor,
                                    size: 5.w)),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          // тут нужна анимация
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Change_of_function>()
                                      .change_state_calculator_expanded();
                                },
                                type: 1,
                                number: "big",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .nums_press("0");
                                },
                                type: 1,
                                number: "0",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .comma_press();
                                },
                                type: 1,
                                number: ".",
                                font: 8.0),
                            InputButton(
                                onPressed: () {
                                  context
                                      .read<Input_number_calculator>()
                                      .resuilt();
                                },
                                type: 2,
                                number: "=",
                                font: 8.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              if (changeOfFunction.calculator == false) {
                return Column(
                  children: [
                    SizedBox(
                        height: 43.39.h, width: 95.w, child: AnimatedScreen()),
                    // resuilt_animated_screen(), не используется, но может нужно тебе
                    SizedBox(
                      height: 49.7.h,
                      width: 100.w,
                      child: keyboard_equation(),
                    ),
                  ],
                );
              } else {
                return Builder(builder: (context) {
                  if (changeOfFunction.calculator_expanded == true) {
                    return Column(
                      children: [
                        SizedBox(
                            height: 30.39.h, width: 100.w, child: calculator()),
                        // resuilt_animated_screen(), не используется, но может нужно тебе
                        SizedBox(
                          height: 63.7.h,
                          width: 100.w,
                          child: Keyboard_calculator_expanded(),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        SizedBox(
                            height: 43.39.h, width: 100.w, child: calculator()),
                        // resuilt_animated_screen(), не используется, но может нужно тебе
                        SizedBox(
                          height: 49.7.h,
                          width: 100.w,
                          child: keyboard_calculator(),
                        ),
                      ],
                    );
                  }
                });
              }
            }
          }),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
