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
    const double textSize = 15;
    const double space = 15;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      body: ListView(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: space),
                child: Container(
                  width: 22.w,
                  height: 10.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "555",
                        style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 4.w,
                            fontFamily: "Nokora",
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}

class equations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    throw UnimplementedError();
  }
}
