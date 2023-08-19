import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class BlurryDialog extends StatelessWidget {
  VoidCallback continueCallBack;
  List<bool> type_choose;
  bool calculator;
  bool menu;
  bool convertCurrency;
  bool logarithm;

  BlurryDialog(this.continueCallBack, this.type_choose, this.calculator,
      this.menu, this.convertCurrency, this.logarithm);
  TextStyle textStyle =
      const TextStyle(fontFamily: "Nokora", color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Builder(builder: (context) {
        // отвечает за провекру что показывать
        /// some operation here ...
        if (menu) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            title: Center(
              child: Text(
                "Пользование",
                style: textStyle,
              ),
            ),
            content: SizedBox(
              height: 5.h,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Нажмите на кнопки для выбора функционала ",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            color: Colors.black,
                            fontSize: 11.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("Закрыть"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
        if (convertCurrency) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            title: Center(
              child: Text(
                "Пользование",
                style: textStyle,
              ),
            ),
            content: SizedBox(
              height: 8.h,
              child: Column(
                children: [
                  Text(
                    "Если ничего не появилось нажмите на кнопку Загрузки в верхней части экрана",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        color: Colors.black,
                        fontSize: 11.sp),
                  ),
                  SizedBox(
                    height: 0.3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Для загрузки валюты нужно интернет соединение",
                        style: TextStyle(
                            fontFamily: "Nokora",
                            color: Colors.black,
                            fontSize: 10.5.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("Закрыть"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
        if (logarithm) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            title: Center(
              child: Text(
                "Пользование",
                style: textStyle,
              ),
            ),
            content: SizedBox(
              height: 4.h,
              child: Column(
                children: [
                  Text(
                    "Вводите a и b логарифма и получайте ответ",
                    style: TextStyle(
                        fontFamily: "Nokora",
                        color: Colors.black,
                        fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("Закрыть"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
        if (calculator == false) {
          return AlertDialog(
            title: Row(
              children: [
                Text(
                  "Для подробной информации",
                ),
              ],
            ),
            content: Text(
              "Нажмите открыть для перехода на сайт с обьяснением",
              style: textStyle,
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("Открыть"),
                onPressed: () {
                  _launchURL(type_choose);
                },
              ),
              TextButton(
                child: const Text("Закрыть"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        } else {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            title: Center(
              child: Text(
                "Пользование",
                style: textStyle,
              ),
            ),
            content: SizedBox(
              height: 8.6.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Нажмите на кнопки для ввода  чисел ",
                        style: textStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Big для увеличение количества функций",
                        style: textStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "less для уменьшение количества функций",
                        style: textStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("Закрыть"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
      }),
    );
  }
}

_launchURL(var typeChoose) async {
  var url;
  if (typeChoose[0] == true) {
    url =
        'https://skysmart.ru/articles/mathematic/kak-reshat-kvadratnye-uravneniya';
  }
  if (typeChoose[1] == true) {
    url =
        'https://all-equa.ru/articles/priblizhennoe-vychislenie-korney-kubicheskogo-uravneniya/';
  }
  if (typeChoose[2] == true) {
    url = 'https://tutomath.ru/baza-znanij/bikvadratnye-uravneniya.html';
  }
  //url =
  'https://skysmart.ru/articles/mathematic/kak-reshat-kvadratnye-uravneniya';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
