import 'dart:ui';

import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

@override
late String appName;
late String packageName;
late String version;
late String buildNumber;

class About_programm extends StatefulWidget {
  VoidCallback continueCallBack;

  About_programm(this.continueCallBack);

  @override
  State<About_programm> createState() => _About_programmState();
}

class _About_programmState extends State<About_programm> {
  TextStyle textStyle = TextStyle(fontFamily: "Nokora", color: Colors.black);
  TextStyle textStyle2 =
      TextStyle(fontFamily: "Nokora", color: Colors.black, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      title: Center(
        child: Text(
          "О программе",
          style: textStyle,
        ),
      ),
      content: Container(
        height: 10.8.h,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Название :",
                  style: textStyle2,
                ),
                Text(
                  appName,
                  style: textStyle2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Версия :",
                  style: textStyle2,
                ),
                Text(
                  version,
                  style: textStyle2,
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Иконки : ",
                  style: textStyle2,
                ),
                Text(
                  "https://ru.freepik.com/icon",
                  style: TextStyle(
                      fontFamily: "Nokora", color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text("Открыть Репозиторий"),
          onPressed: () {
            _launchURL();
          },
        ),
        TextButton(
          child: Text("Закрыть"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

_launchURL() async {
  var url;
  url = 'https://github.com/vladStar223/calculator';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
