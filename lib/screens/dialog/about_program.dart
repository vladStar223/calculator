import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

late String appName;
late String packageName;
late String version;
late String buildNumber;

// ignore: must_be_immutable
@override
class AboutProgramm extends StatelessWidget {
  VoidCallback continueCallBack;

  AboutProgramm(this.continueCallBack, {super.key});

  TextStyle textStyle =
      const TextStyle(fontFamily: "Nokora", color: Colors.black);

  TextStyle textStyle2 =
      const TextStyle(fontFamily: "Nokora", color: Colors.black, fontSize: 20);

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
      content: SizedBox(
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
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Иконки : ",
                  style: textStyle2,
                ),
                const Text(
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
          child: const Text("Открыть Репозиторий"),
          onPressed: () {
            _launchURL();
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
