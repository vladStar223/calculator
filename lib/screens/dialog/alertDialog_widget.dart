import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class BlurryDialog extends StatelessWidget {
  String title;
  String content;
  VoidCallback continueCallBack;
  var type_choose;
  bool calculator;

  BlurryDialog(this.title, this.content, this.continueCallBack,
      this.type_choose, this.calculator,
      {super.key});
  TextStyle textStyle =
      const TextStyle(fontFamily: "Nokora", color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Builder(builder: (context) {
        // отвечает за провекру что показывать
        /// some operation here ...
        if (calculator == false) {
          return AlertDialog(
            title: Text(
              title,
              style: textStyle,
            ),
            content: Text(
              content,
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
