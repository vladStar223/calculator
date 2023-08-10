import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/color/theme.dart';

class Logarith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var AppColors = Provider.of<AppColor>(context);
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: AppColors.fon,
      body: Column(
        children: [
          Container(width: 100, height: 100, color: AppColors.color_of_border)
        ],
      ),
    );
    throw UnimplementedError();
  }
}
