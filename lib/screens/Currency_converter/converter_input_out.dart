import 'package:calculator/Core/provider/provider_domain/seach.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Core/provider/provider_domain/change_valute.dart';
import '../../Core/provider/provider_domain/decide_valute.dart';
import '../../Core/provider/provider_domain/get_data.dart';
import '../../theme/color/theme.dart';
import '../Dialog/choose_valute.dart';

class Input_out_valute extends StatefulWidget {
  @override
  State<Input_out_valute> createState() => _Input_out_valuteState();
}

class _Input_out_valuteState extends State<Input_out_valute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    var data = Provider.of<Get_data>(context);
    var valute_decide = Provider.of<Decide_valute>(context);
    final provider = Provider.of<Change_valute>(context);
    var seach1 = Provider.of<Seach>(context);
    //
    // открывает диалог в меню

    // TODO: implement initState
//ffff
    return Builder(builder: (context) {
      if (data.restart_var == true) {
        print('d');
        Provider.of<Seach>(context).set_value(data.valutes);
        Provider.of<Decide_valute>(context).set_valute(data.valutes);
        Provider.of<Decide_valute>(context).set_index(provider.index);
        data.restart_var = false;
      }
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
                onPressed: () {
                  valute_decide.set_type_one();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: 12.sp),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valute_decide.valute_cofficients[0],
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
                              seachs: seach1,
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
                onPressed: () {
                  valute_decide.set_type_two();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: 12.sp),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valute_decide.valute_cofficients[1],
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
                              seachs: seach1,
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
                onPressed: () {
                  valute_decide.set_type_three();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: 12.sp),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valute_decide.valute_cofficients[2],
                ),
              ),
            )),
        SizedBox(
          height: 2.02.h,
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
                              seachs: seach1,
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
                onPressed: () {
                  valute_decide.set_type_four();
                },
                child: Text(
                  style: TextStyle(
                      color: AppColors.color_of_border, fontSize: 12.sp),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  valute_decide.valute_cofficients[3],
                ),
              ),
            )),
      ]);
    });
    throw UnimplementedError();
  }
}
