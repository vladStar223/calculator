import 'package:flutter/widgets.dart';

enum DeviceType { mobile, tablet, web, mac, windows, linux, fuchsia }

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
    return OrientationBuilder(builder: (context, orientation) {
      final mediaQuery = MediaQuery.of(context);
      final isMobile = mediaQuery.size.width < 600;
      final deviceType = isMobile ? DeviceType.mobile : DeviceType.tablet;
      return builder(context, orientation, deviceType);
    });
  }
}

extension ResponsiveExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double w(double percent) => (percent * screenWidth) / 100;
  double h(double percent) => (percent * screenHeight) / 100;
  double sp(double percent) =>
      percent * (((screenWidth + screenHeight) * 0.1) / 100);
}
