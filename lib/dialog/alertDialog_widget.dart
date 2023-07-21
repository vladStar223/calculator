import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:calculator/main.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../provider/provider_class.dart';

class BlurryDialog extends StatelessWidget {
  String title;
  String content;
  VoidCallback continueCallBack;
  var type_choose;

  BlurryDialog(
      this.title, this.content, this.continueCallBack, this.type_choose);
  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
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
              child: Text("Открыть"),
              onPressed: () {
                _launchURL(type_choose);
              },
            ),
            TextButton(
              child: Text("Закрыть"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }
}

_launchURL(var type_choose) async {
  var url;
  if (type_choose[0] == true) {
    url =
        'https://skysmart.ru/articles/mathematic/kak-reshat-kvadratnye-uravneniya';
  }
  if (type_choose[1] == true) {
    url =
        'https://all-equa.ru/articles/priblizhennoe-vychislenie-korney-kubicheskogo-uravneniya/';
  }
  if (type_choose[2] == true) {
    url = 'https://tutomath.ru/baza-znanij/bikvadratnye-uravneniya.html';
  }
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
