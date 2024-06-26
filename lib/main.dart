//начало программы
import 'package:calculator/screens/Dialog/about_program.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'Core/provider/Equations/decision_urv.dart';
import 'Core/provider/Logarith/input_number_log.dart';
import 'Core/provider/Seach/seach.dart';
import 'Core/provider/Valute/change_valute.dart';
import 'Core/provider/Valute/decide_valute.dart';
import 'Core/provider/input_class.dart';
import 'Core/provider/provider_domain/Data/get_data.dart';
import 'Core/provider/сhange_of_function.dart';
import 'Screens/Dialog/alertDialog_widget.dart';
import 'Screens/Menu/menu.dart';

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
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Seach()),
      ChangeNotifierProvider(create: (context) => ChangeFunction()),
      ChangeNotifierProvider(create: (context) => AppColor()),
      ChangeNotifierProvider(create: (context) => Input_log()),
      ChangeNotifierProvider(create: (context) => Get_data()),
      ChangeNotifierProvider(create: (context) => Change_valute()),
      ChangeNotifierProvider(create: (context) => Decide_valute()),
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
    ], child: const ScreenNormal());
  }
}

// ignore: camel_case_types
class ScreenNormal extends StatefulWidget {
  const ScreenNormal({super.key});

  @override
  State<ScreenNormal> createState() => _ScreenNormalState();
}

class _ScreenNormalState extends State<ScreenNormal> {
  // ignore: prefer_typing_uninitialized_variables
  late final _future;
  @override
  void initState() {
    // TODO: implement initState
    _future = doSomeAsyncStuff();
    super.initState();
    var n = 1;
  }

  Future<void> doSomeAsyncStuff() async {
    Provider.of<AppColor>(context, listen: false).initType();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    getInfo() {
      PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
        appName = packageInfo.appName;
        packageName = packageInfo.packageName;
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    } // получает для глобальных переменных значения

    return FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (ConnectionState.done != snapshot.connectionState) {
            // Future hasn't finished yet, return a placeholder
            return const CircularProgressIndicator();
          }
          return Builder(builder: (context) {
            if (Provider.of<AppColor>(context).x == true) {
              Provider.of<AppColor>(context).Change_color();
              getInfo();
            }
            return const ViewEditer();
          });
        });
  }
}

class ViewEditer extends StatelessWidget {
  const ViewEditer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    AppColor AppColors;
    AppColors = Provider.of<AppColor>(context);
    var changeOfFunction = Provider.of<ChangeFunction>(context);
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var typeChoose =
        Provider.of<Input_number_equations>(context).active_resuilt_screen;
    // ignore: no_leading_underscores_for_local_identifiers
    _showDialog(BuildContext context) {
      continueCallBack() => {
            Navigator.of(context).pop(),
            // code on continue comes here
          };
      BlurryDialog alert = BlurryDialog(
          continueCallBack,
          typeChoose,
          changeOfFunction.calculator,
          changeOfFunction.menu,
          changeOfFunction.currency_convert,
          changeOfFunction.logarithm);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    } // открывает диалог в верней панели

    // ignore: no_leading_underscores_for_local_identifiers
    _showDialog1(BuildContext context) {
      continueCallBack() => {
            Navigator.of(context).pop(),
            // code on continue comes here
          };
      AboutProgramm alert = AboutProgramm(continueCallBack);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    } // открывает диалог в меню

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      key: scaffoldKey,
      drawer: Drawer(
          backgroundColor: AppColors.fon,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
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
                    changeOfFunction.change_state_menu();
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
                  splashRadius: 22,
                  color: AppColors.textcolorfortop,
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(MyFlutterApp.menu_circle)),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: AppColors.color_of_border),
                onPressed: () {
                  changeOfFunction.change_state_calculator();
                },
                child: Icon(
                  MyFlutterApp.calculator_icon_icons_com_66651,
                  color: AppColors.white,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: AppColors.color_of_border),
                onPressed: () {
                  changeOfFunction.change_state_menu();
                },
                child: Icon(
                  MyFlutterApp.functions_icon_144317,
                  color: AppColors.white,
                ),
              ),
              IconButton(
                  color: AppColors.textcolorfortop,
                  splashRadius: 22,
                  splashColor: AppColors.color_of_border,
                  onPressed: () {
                    _showDialog(context);
                  },
                  icon: const Icon(MyFlutterApp.question_circle)),
            ],
          ),
          Flexible(child: Menu())
        ],
      ),
    );
  }
}

extension Case on String {
  // isuppercase
  bool isUpperCase() {
    int ascii = codeUnitAt(0);
    return ascii >= 65 && ascii <= 90;
  }

  // islowercase
  bool isLowerCase() {
    int ascii = codeUnitAt(0);
    return ascii >= 97 && ascii <= 122;
  }
}
