import 'package:calculator/provider/provider_class.dart';
import 'package:calculator/screens/screens_calculator.dart';
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
import 'package:calculator/screens/keyboard.dart';
import 'dialog/alertDialog_widget.dart';
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
      ChangeNotifierProvider(create: (context) => change_of_function()),
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
    var Change_of_function = Provider.of<change_of_function>(context);
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
                    Change_of_function.change_state_calculator();
                    print(" Change_of_function.change_state_calculator()");
                  },
                  icon: Icon(MyFlutterApp.calculator_icon_icons_com_66651)),
              IconButton(
                  color: AppColors.textcolorfortop,
                  onPressed: () {
                    Change_of_function.change_state_equation_function();
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
            print(Change_of_function.calculator);
            print(Change_of_function.equation_function);
            if (Change_of_function.calculator == false) {
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
              return Column(
                children: [
                  SizedBox(height: 43.39.sh, width: 95.sw, child: calculator()),
                  // resuilt_animated_screen(), не используется, но может нужно тебе
                  SizedBox(
                    height: 49.7.sh,
                    width: 100.sw,
                    child: keyboard_calculator(),
                  ),
                ],
              );
            }
          }),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
