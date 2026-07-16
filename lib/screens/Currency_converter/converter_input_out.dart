import 'package:calculator/core/provider/Seach/seach.dart';
import 'package:calculator/core/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../core/provider/Valute/change_valute.dart';
import '../../core/provider/Valute/decide_valute.dart';
import '../../core/provider/provider_domain/Data/get_data.dart';
import '../../theme/color/theme.dart';
import '../dialog/choose_valute.dart';

class ShowValute extends StatefulWidget {
  const ShowValute({super.key});

  @override
  State<ShowValute> createState() => _ShowValuteState();
}

class _ShowValuteState extends State<ShowValute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: non_constant_identifier_names
    var AppColors = Provider.of<AppColor>(context);
    var data = Provider.of<Get_data>(context);
    var valuteDecide = Provider.of<Decide_valute>(context);
    final provider = Provider.of<Change_valute>(context);
    var seach1 = Provider.of<Seach>(context);
    //
    // открывает диалог в меню

    // TODO: implement initState
//ffff
    return Builder(builder: (context) {
      if (data.restart_var == true) {
        seach1.set_value(data.valutes);
        valuteDecide.set_valute(data.valutes);
        valuteDecide.set_index(provider.index);
        data.restart_var = false;
      }
      return Column(children: [
        ListTile(
            title: Row(
              children: [
                SizedBox(
                  height: context.h(6),
                  width: context.w(30),
                  child: TextButton(
                    onPressed: () {
                      provider.one_trigger();
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ChooseValute(
                              dataSet: provider,
                              valutes: data.valutes,
                              AppColors: AppColors, seachs: seach1,
                              //seach: Provider.of<Seach>(context),
                            );
                          });
                    },
                    child: Text(
                      textAlign: TextAlign.right,
                      data.name_code[provider.index[0]].toString(),
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: context.w(8),
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.h(6),
                  width: context.w(23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data.valutes[provider.index[0]].Name,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: context.w(2),
                            fontWeight: FontWeight.w100,
                            fontFamily: "Nokora"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            trailing: SizedBox(
              height: context.h(6),
              width: context.w(30),
              child: TextButton(
                onPressed: () {
                  valuteDecide.set_type_one();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: context.sp(12)),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valuteDecide.valute_cofficients[0],
                ),
              ),
            )),
        SizedBox(
          height: context.h(2),
        ),
        ListTile(
            title: Row(
              children: [
                SizedBox(
                  height: context.h(6),
                  width: context.w(30),
                  child: TextButton(
                    onPressed: () {
                      provider.two_trigger();
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ChooseValute(
                              dataSet: provider,
                              valutes: data.valutes,
                              AppColors: AppColors,
                              seachs: seach1,
                            );
                          });
                    },
                    child: Text(
                      textAlign: TextAlign.right,
                      data.name_code[provider.index[1]].toString(),
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: context.w(8),
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.h(6),
                  width: context.w(23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data.valutes[provider.index[1]].Name,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: context.w(2),
                            fontWeight: FontWeight.w100,
                            fontFamily: "Nokora"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            trailing: SizedBox(
              height: context.h(6),
              width: context.w(30),
              child: TextButton(
                onPressed: () {
                  valuteDecide.set_type_two();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: context.sp(12)),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valuteDecide.valute_cofficients[1],
                ),
              ),
            )),
        SizedBox(
          height: context.h(2),
        ),
        ListTile(
            title: Row(
              children: [
                SizedBox(
                  height: context.h(6),
                  width: context.w(30),
                  child: TextButton(
                    onPressed: () {
                      provider.three_trigger();
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ChooseValute(
                              dataSet: provider,
                              valutes: data.valutes,
                              AppColors: AppColors,
                              seachs: seach1,
                            );
                          });
                    },
                    child: Text(
                      textAlign: TextAlign.right,
                      data.name_code[provider.index[2]].toString(),
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: context.w(8),
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.h(6),
                  width: context.w(23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data.valutes[provider.index[2]].Name,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: context.w(2),
                            fontWeight: FontWeight.w100,
                            fontFamily: "Nokora"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            trailing: SizedBox(
              height: context.h(6),
              width: context.w(30),
              child: TextButton(
                onPressed: () {
                  valuteDecide.set_type_three();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: context.sp(12)),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valuteDecide.valute_cofficients[2],
                ),
              ),
            )),
        SizedBox(
          height: context.h(2.02),
        ),
        ListTile(
            title: Row(
              children: [
                SizedBox(
                  height: context.h(6),
                  width: context.w(30),
                  child: TextButton(
                    onPressed: () {
                      provider.four_trigger();
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ChooseValute(
                              dataSet: provider,
                              valutes: data.valutes,
                              AppColors: AppColors,
                              seachs: seach1,
                            );
                          });
                    },
                    child: Text(
                      textAlign: TextAlign.right,
                      data.name_code[provider.index[3]].toString(),
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: context.w(8),
                          fontWeight: FontWeight.w100,
                          fontFamily: "Nokora"),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.h(6),
                  width: context.w(23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data.valutes[provider.index[3]].Name,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: context.w(2),
                            fontWeight: FontWeight.w100,
                            fontFamily: "Nokora"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            trailing: SizedBox(
              height: context.h(6),
              width: context.w(30),
              child: TextButton(
                onPressed: () {
                  valuteDecide.set_type_four();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: context.sp(12)),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valuteDecide.valute_cofficients[3],
                ),
              ),
            )),
      ]);
    });
  }
}
