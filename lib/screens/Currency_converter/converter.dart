import 'dart:convert';

import 'package:calculator/Core/domain/entity/post.dart';
import 'package:calculator/Core/domain/entity/valute.dart';
import 'package:calculator/Core/provider/provider_domain/change_valute.dart';
import 'package:calculator/Core/provider/provider_domain/get_data.dart';
import 'package:calculator/Screens/dialog/choose_valute.dart';
import 'package:calculator/Screens/keyboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/domain/api_clients/api_clients.dart';
import '../../theme/color/theme.dart';

class Currency_conver extends StatefulWidget {
  @override
  State<Currency_conver> createState() => _Currency_converState();
}

class _Currency_converState extends State<Currency_conver> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build\
    var AppColors = Provider.of<AppColor>(context);
    var data = Provider.of<Get_data>(context);
    data.getValutes_from_Post();
    return Scaffold(
      backgroundColor: AppColors.fon,
      body: Column(
        children: [
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Container(
                height: 4.h,
                width: 100.w,
                child: ListTile(
                  title: Text(
                    textAlign: TextAlign.center,
                    data.state_data,
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 5.w,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Nokora"),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      if (data.get_data == true) {
                        data.get_post();
                      } else {
                        print("данные получены");
                      }
                    },
                    tooltip: 'Обновить валюты',
                    splashRadius: 30,
                    splashColor: Colors.black12,
                    style: IconButton.styleFrom(
                        animationDuration: const Duration(seconds: 100)),
                    icon: Icon(
                      Icons.browser_updated,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Input_out_valute(),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}

class Input_out_valute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    var data = Provider.of<Get_data>(context);
    var valute = Provider.of<Decide_valute>(context);
    _showDialog_choose(BuildContext context) {
      VoidCallback continueCallBack = () => {
            Navigator.of(context).pop(),
            // code on continue comes here
          };
      Choose_valute alert = Choose_valute(continueCallBack);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    } // открывает диалог в меню

    data.getValutes_from_Post();
    return Column(children: [
      Container(
        height: 6.h,
        width: 95.w,
        decoration: BoxDecoration(
          color: AppColors.output,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
            title: Row(
              children: [
                Container(
                  height: 6.h,
                  width: 30.w,
                  child: TextButton(
                    onPressed: () {
                      _showDialog_choose(context);
                      print("валюта");
                    },
                    child: Text(
                      textAlign: TextAlign.right,
                      data.name_code[0].toString(),
                      style: TextStyle(
                          color: AppColors.textcolor2,
                          fontSize: 8.w,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ),
                ),
              ],
            ),
            trailing: Container(
              height: 6.h,
              width: 30.w,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  valute.valute_cofficients[0],
                ),
              ),
            )),
      ),
      Container(
        height: 6.h,
        width: 95.w,
        decoration: BoxDecoration(
          color: AppColors.output,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            textAlign: TextAlign.start,
            "USA",
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: 8.w,
                fontWeight: FontWeight.w100,
                fontFamily: "Nokora"),
          ),
          trailing: IconButton(
            onPressed: () {},
            tooltip: 'Обновить валюты',
            splashRadius: 30,
            splashColor: Colors.black,
            style: IconButton.styleFrom(
                animationDuration: const Duration(seconds: 100)),
            icon: Icon(
              Icons.browser_updated,
              color: AppColors.fon,
            ),
          ),
        ),
      ),
      Container(
        height: 6.h,
        width: 95.w,
        decoration: BoxDecoration(
          color: AppColors.output,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            textAlign: TextAlign.start,
            "USA",
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: 8.w,
                fontWeight: FontWeight.w100,
                fontFamily: "Nokora"),
          ),
          trailing: IconButton(
            onPressed: () {},
            tooltip: 'Обновить валюты',
            splashRadius: 30,
            splashColor: Colors.black,
            style: IconButton.styleFrom(
                animationDuration: const Duration(seconds: 100)),
            icon: Icon(
              Icons.browser_updated,
              color: AppColors.fon,
            ),
          ),
        ),
      ),
      Container(
        height: 6.h,
        width: 95.w,
        decoration: BoxDecoration(
          color: AppColors.output,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            textAlign: TextAlign.start,
            "USA",
            style: TextStyle(
                color: AppColors.textcolor2,
                fontSize: 8.w,
                fontWeight: FontWeight.w100,
                fontFamily: "Nokora"),
          ),
          trailing: IconButton(
            onPressed: () {},
            tooltip: 'Обновить валюты',
            splashRadius: 30,
            splashColor: Colors.black,
            style: IconButton.styleFrom(
                animationDuration: const Duration(seconds: 100)),
            icon: Icon(
              Icons.browser_updated,
              color: AppColors.fon,
            ),
          ),
        ),
      ),
    ]);
    throw UnimplementedError();
  }
}
/*

 child: FutureBuilder<Post>(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              _valutes.addAll(snapshot.data!.valute.values.toList());
              return Text(_valutes[42].Name);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
 */
