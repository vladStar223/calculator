<<<<<<< HEAD
import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';
=======
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
>>>>>>> a7fdccb (layout created)
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

//начало программы
void main() {
  runApp(Provider(
    create: (BuildContext context) {},
    child: ResponsiveApp(
      builder: (context) => MaterialApp(
        // код для создание переключения между монолитными виджетами
        // дальше   инцилизируется библиотеки для передачи данных

        initialRoute: '/',
        routes: {
          '/': (context) => const Main(),
        },
      ),
    ),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
<<<<<<< HEAD
    return Scaffold(
      body: Center(
        child: Text(
          "dd4444",
          style: TextStyle(
              fontFamily: "Nokora",
              color: AppColors().color,
              fontWeight: FontWeight.w300),
=======
    // To make this screen full screen.
    // It will hide status bar and notch.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MultiProvider(
      providers: [
        Provider<peter1>(create: (_) => peter1()),
      ],
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
        //backgroundColor: AppColors().fon,
        drawer: Drawer(
            child: new DrawerHeader(
          child: const Text("Заголовок меню"),
          decoration: BoxDecoration(color: Colors.green),
        )),
        appBar: AppBar(
          title: const Text("Уравнения"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.cabin))],
          leading: Builder(
            builder: (context) => // Ensure Scaffold is in context
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer()),
          ),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 35.sh,
                  width: 100.sw,
                  child: Padding(
                    padding: EdgeInsets.all(4.sh),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 8.sh,
                      width: 21.sw,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 0.2.sh,
            ),
            Container(
              height: 48.sh,
              width: 100.sw,
              child: Padding(
                padding: EdgeInsets.all(0.5.sh),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 0.4.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 5.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.4.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 8.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.4.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 8.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.4.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 8.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.4.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 10.sh,
                            width: 16.sw,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 9.sh,
                            width: 16.sw,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
>>>>>>> a7fdccb (layout created)
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======

class peter1 extends ChangeNotifier {}
>>>>>>> a7fdccb (layout created)
