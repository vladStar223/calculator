import 'package:flutter/widgets.dart';

enum DeviceType { mobile, tablet, web, mac, windows, linux, fuchsia }

class SizerUtil {
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double width;
  static late double height;

  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    orientation = currentOrientation;
    if (orientation == Orientation.portrait) {
      width = constraints.maxWidth;
      height = constraints.maxHeight;
    } else {
      width = constraints.maxHeight;
      height = constraints.maxWidth;
    }

    if (width < 600) {
      deviceType = DeviceType.mobile;
    } else {
      deviceType = DeviceType.tablet;
    }
  }
}

typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

class Sizer extends StatelessWidget {
  const Sizer({
    super.key,
    required this.builder,
  });

  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizerUtil.deviceType);
      });
    });
  }
}

extension ResponsiveExtension on BuildContext {
  double get screenWidth => SizerUtil.width;
  double get screenHeight => SizerUtil.height;

  double w(double percent) => (percent * screenWidth) / 100;
  double h(double percent) => (percent * screenHeight) / 100;
  double sp(double percent) =>
      percent * (((screenWidth + screenHeight) * 0.1) / 100);
}
