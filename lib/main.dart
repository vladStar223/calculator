import 'package:calculator/provider/input_class.dart';
import 'package:calculator/provider/provider_class.dart';
import 'package:calculator/screens/dialog/about_program.dart';
import 'package:calculator/screens/dialog/alertDialog_widget.dart';
import 'package:calculator/screens/screens_calculator.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:calculator/provider/provider_class.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:calculator/switching%20classes/animated_class.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:calculator/screens/keyboard.dart';
import 'provider/provider_class.dart';

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
      ChangeNotifierProvider(create: (context) => input_number()),
      ChangeNotifierProvider(create: (context) => Change_of_function()),
      ChangeNotifierProvider(create: (context) => AppColor()),
      ChangeNotifierProvider(create: (context) => Input_number_calculator()),
      ChangeNotifierProvider(create: (context) => Input_number_equations()),
    ], child: screen_normal());
  }
}

class screen_normal extends StatefulWidget {
  const screen_normal({super.key});

  @override
  State<screen_normal> createState() => _screen_normalState();
}

class _screen_normalState extends State<screen_normal> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    var changeOfFunction = Provider.of<Change_of_function>(context);
    var typeChoose = Provider.of<input_number>(context).urv;
    const displayName = "displayName";
    final scaffoldKey = GlobalKey<ScaffoldState>();
    _getInfo() {
      PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
        appName = packageInfo.appName;
        packageName = packageInfo.packageName;
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    } // получает для глобальных переменных значения

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

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      key: scaffoldKey,
      drawer: Drawer(
          backgroundColor: AppColors.fon,
          child: DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                SizedBox(
                  height: 2.sh,
                ),
                Text(
                  "Калькулятор",
                  style: TextStyle(
                      fontFamily: "Nokora",
                      fontSize: 9.sw,
                      fontWeight: FontWeight.w200,
                      color: AppColors.textcolor),
                ),
                SizedBox(
                  height: 2.5.sh,
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
                      leading: Icon(MyFlutterApp.wb_sunny,
                          color: AppColors.textcolor),
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
                      leading: Icon(MyFlutterApp.moon_inv,
                          color: AppColors.textcolor),
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
                      _getInfo();
                      _showDialog1(context);
                    }),
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
            if (changeOfFunction.calculator == false) {
              return Column(
                children: [
                  SizedBox(
                      height: 43.39.sh, width: 95.sw, child: AnimatedScreen()),
                  // resuilt_animated_screen(), не используется, но может нужно тебе
                  SizedBox(
                    height: 49.7.sh,
                    width: 100.sw,
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
                          height: 30.39.sh, width: 95.sw, child: calculator()),
                      // resuilt_animated_screen(), не используется, но может нужно тебе
                      SizedBox(
                        height: 63.7.sh,
                        width: 100.sw,
                        child: Keyboard_calculator_expanded(),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      SizedBox(
                          height: 43.39.sh, width: 95.sw, child: calculator()),
                      // resuilt_animated_screen(), не используется, но может нужно тебе
                      SizedBox(
                        height: 49.7.sh,
                        width: 100.sw,
                        child: keyboard_calculator(),
                      ),
                    ],
                  );
                }
              });
            }
          }),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
