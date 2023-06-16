import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Center(
        child: Text(
          "dd4444",
          style: TextStyle(
              fontFamily: "Nokora",
              color: AppColors().color,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
