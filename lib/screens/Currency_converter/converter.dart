import 'dart:convert';

import 'package:calculator/Core/domain/entity/post.dart';
import 'package:calculator/Core/domain/entity/valute.dart';
import 'package:calculator/Core/provider/provider_domain/change_valute.dart';
import 'package:calculator/Core/provider/provider_domain/decide_valute.dart';
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

    return FutureBuilder(
        future: data.getValutes_from_Post(),
        builder: (context, snapshot) {
          if (snapshot.hasData != true) {
            // Future hasn't finished yet, return a placeholder
            return const CircularProgressIndicator();
          }
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
        });
  }
}

class Input_out_valute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    var data = Provider.of<Get_data>(context);
    var valute = Provider.of<Decide_valute>(context);
    final provider = Provider.of<Change_valute>(context);
    // открывает диалог в меню
//ffff
    return Column(children: [
      ListTile(
          title: Row(
            children: [
              SizedBox(
                height: 6.h,
                width: 30.w,
                child: TextButton(
                  onPressed: () {
                    provider.one_trigger();
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Choose_valute(
                            dataSet: provider,
                            valutes: data.valutes,
                            AppColors: AppColors,
                          );
                        });
                  },
                  child: Text(
                    textAlign: TextAlign.right,
                    data.name_code[provider.index[0]].toString(),
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 8.w,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
                width: 23.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.valutes[provider.index[0]].Name,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 2.w,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ],
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
      SizedBox(
        height: 2.h,
      ),
      ListTile(
          title: Row(
            children: [
              SizedBox(
                height: 6.h,
                width: 30.w,
                child: TextButton(
                  onPressed: () {
                    provider.two_trigger();
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Choose_valute(
                            dataSet: provider,
                            valutes: data.valutes,
                            AppColors: AppColors,
                          );
                        });
                  },
                  child: Text(
                    textAlign: TextAlign.right,
                    data.name_code[provider.index[1]].toString(),
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 8.w,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
                width: 23.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.valutes[provider.index[1]].Name,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 2.w,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ],
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
                valute.valute_cofficients[1],
              ),
            ),
          )),
      SizedBox(
        height: 2.h,
      ),
      ListTile(
          title: Row(
            children: [
              SizedBox(
                height: 6.h,
                width: 30.w,
                child: TextButton(
                  onPressed: () {
                    provider.three_trigger();
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Choose_valute(
                            dataSet: provider,
                            valutes: data.valutes,
                            AppColors: AppColors,
                          );
                        });
                  },
                  child: Text(
                    textAlign: TextAlign.right,
                    data.name_code[provider.index[2]].toString(),
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 8.w,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
                width: 23.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.valutes[provider.index[2]].Name,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 2.w,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ],
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
                valute.valute_cofficients[2],
              ),
            ),
          )),
      SizedBox(
        height: 2.h,
      ),
      ListTile(
          title: Row(
            children: [
              SizedBox(
                height: 6.h,
                width: 30.w,
                child: TextButton(
                  onPressed: () {
                    provider.four_trigger();
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Choose_valute(
                            dataSet: provider,
                            valutes: data.valutes,
                            AppColors: AppColors,
                          );
                        });
                  },
                  child: Text(
                    textAlign: TextAlign.right,
                    data.name_code[provider.index[3]].toString(),
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 8.w,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Nokora"),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
                width: 23.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.valutes[provider.index[3]].Name,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 2.w,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ],
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
                valute.valute_cofficients[3],
              ),
            ),
          )),
      SizedBox(
        height: 2.h,
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
