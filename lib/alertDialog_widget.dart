import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:calculator/main.dart';
import 'package:url_launcher/url_launcher.dart';

class BlurryDialog extends StatelessWidget {
  String title;
  String content;
  VoidCallback continueCallBack;

  BlurryDialog(this.title, this.content, this.continueCallBack);
  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          title: new Text(
            title,
            style: textStyle,
          ),
          content: new Text(
            content,
            style: textStyle,
          ),
          actions: <Widget>[
            TextButton(
              child: new Text("Открыть"),
              onPressed: _launchURL,
            ),
            new TextButton(
              child: Text("Закрыть"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }
}

_launchURL() async {
  const url =
      'https://all-equa.ru/articles/priblizhennoe-vychislenie-korney-kubicheskogo-uravneniya/';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
