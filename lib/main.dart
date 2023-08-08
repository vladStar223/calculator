import 'package:calculator/provider/%D1%81hange_of_function.dart';
import 'package:calculator/provider/decision_urv.dart';
import 'package:calculator/provider/input_class.dart';
import 'package:calculator/screens/buttons.dart';
import 'package:calculator/screens/dialog/about_program.dart';
import 'package:calculator/screens/dialog/alertDialog_widget.dart';
import 'package:calculator/screens/keyboard.dart';
import 'package:calculator/screens/menu.dart';
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
    _getInfo() {
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
            return Center(child: Text('Loading'));
          }
          return Builder(builder: (context) {
            if (Provider.of<AppColor>(context).x == true) {
              Provider.of<AppColor>(context).Change_color();
              _getInfo();
            }
            return View_editer();
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
                    changeOfFunction.change_state_menu();
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
          Calculators(),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
