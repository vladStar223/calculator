import 'package:calculator/core/provider/provider_domain/Data/get_data.dart';
import 'package:calculator/core/responsive.dart';
import 'package:calculator/theme/icon/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/provider/Valute/decide_valute.dart';
import '../../theme/color/theme.dart';
import 'converter_input_out.dart';
import 'key_board_convert.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build\
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    var data = Provider.of<Get_data>(context);

    return FutureBuilder(
        future: data.getValutes_from_Post(),
        builder: (context, snapshot) {
          if (snapshot.hasData != true) {
            // Future hasn't finished yet, return a placeholder
            return const CircularProgressIndicator();
          }
          if (snapshot.data == '0') {
            return Column(
              children: [
                SizedBox(
                  height: context.h(1),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: context.h(4),
                      width: context.w(100),
                      child: ListTile(
                        title: Text(
                          textAlign: TextAlign.center,
                          data.state_data,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: context.w(3),
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
                  height: context.h(45),
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "Получите данные для подсчета",
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: context.w(6),
                            fontWeight: FontWeight.w100,
                            fontFamily: "Nokora"),
                      ),
                    ),
                  ],
                ),
              ],
            );
          } else {
            return Scaffold(
              backgroundColor: AppColors.fon,
              body: ListView(physics: const ClampingScrollPhysics(), children: [
                Column(
                  children: [
                    SizedBox(
                      height: context.h(1),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: context.h(4),
                          width: context.w(100),
                          child: ListTile(
                            title: Text(
                              textAlign: TextAlign.center,
                              data.state_data,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: context.w(3),
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
                                  animationDuration:
                                      const Duration(seconds: 100)),
                              icon: Icon(
                                MyFlutterApp.cash_flow_8350947,
                                size: context.w(6),
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.h(5),
                    ),
                    SizedBox(
                        height: context.h(35), width: context.w(100), child: const ShowValute()),
                    SizedBox(
                      height: context.h(2),
                      width: context.w(100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Данные передоставлены",
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: context.w(3),
                                fontWeight: FontWeight.w100,
                                fontFamily: "Nokora"),
                          ),
                          Text(
                            " ЦБ РФ",
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: context.w(3),
                                fontWeight: FontWeight.w100,
                                fontFamily: "Nokora"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.h(1),
                    ),
                    const KeyboardConvert()
                  ],
                ),
              ]),
            );
          }
        });
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
