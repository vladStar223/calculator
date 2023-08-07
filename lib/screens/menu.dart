import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../theme/color/theme.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    const double textSize = 22;
    const double space = 15;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      body: ListView(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                    width: 15.w,
                    height: 20,
                    color: AppColors.color_of_border,
                    child: const Text(
                      "Alice",
                      style: TextStyle(fontSize: textSize),
                    )),
              ),
              Padding(
                child: Text("Bob", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Sam", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
              Padding(
                child: Text("Kate", style: TextStyle(fontSize: textSize)),
                padding: EdgeInsets.symmetric(horizontal: space),
              ),
            ],
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
