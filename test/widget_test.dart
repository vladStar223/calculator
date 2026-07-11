import 'package:calculator/core/provider/Equations/decision_urv.dart';
import 'package:calculator/core/provider/Logarith/input_number_log.dart';
import 'package:calculator/core/provider/Seach/seach.dart';
import 'package:calculator/core/provider/Valute/change_valute.dart';
import 'package:calculator/core/provider/Valute/decide_valute.dart';
import 'package:calculator/core/provider/input_class.dart';
import 'package:calculator/core/provider/provider_domain/Data/get_data.dart';
import 'package:calculator/core/provider/сhange_of_function.dart';
import 'package:calculator/core/responsive.dart';
import 'package:calculator/screens/Menu/menu.dart';
import 'package:calculator/theme/color/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

Widget buildTestWidget() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Seach()),
      ChangeNotifierProvider(create: (context) => ChangeFunction()),
      ChangeNotifierProvider(create: (context) => AppColor()),
      ChangeNotifierProvider(create: (context) => Input_log()),
      ChangeNotifierProvider(create: (context) => Get_data()),
      ChangeNotifierProvider(create: (context) => Change_valute()),
      ChangeNotifierProvider(create: (context) => Decide_valute()),
      ChangeNotifierProvider(create: (context) => Input_number_calculator()),
      ChangeNotifierProvider(create: (context) => Input_number_equations()),
      ChangeNotifierProxyProvider<Input_number_equations, Decision_urv>(
        create: (context) => Decision_urv(
            Provider.of<Input_number_equations>(context, listen: false)),
        update: (context, Input_number_equations inputNumberEquations,
            decisionUrv) {
          return Decision_urv(inputNumberEquations);
        },
      ),
    ],
    child: Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          home: Scaffold(
            body: Menu(),
          ),
        );
      },
    ),
  );
}

void main() {
  testWidgets('Calculator UI Smoke Test', (WidgetTester tester) async {
    // Set standard mobile screen dimensions to prevent layout overflow in the test
    tester.view.physicalSize = const Size(1080, 2200);
    tester.view.devicePixelRatio = 2.0;

    // Pump the Menu widget wrapped with the required providers and responsive Sizer
    await tester.pumpWidget(buildTestWidget());
    await tester.pumpAndSettle();

    // Verify that the initial screen contains typical calculator buttons, e.g., '7', '8', '9'
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);
    expect(find.text('AC'), findsWidgets); // Buttons like AC should be present

    // Tap on a button (e.g., '7') and check if the calculator count updates
    await tester.tap(find.text('7'));
    await tester.pumpAndSettle();

    expect(find.text('0'), findsWidgets);
    expect(find.text('='), findsOneWidget);
  });
}
