import 'package:app2/Presentation/Screen/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Presentation/Screen/firstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(490.9, 1036.4),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Rattan Armchair',
            routes: <String, WidgetBuilder>{
              '/': (_) => FirstPage(),
              '/secondPage': (_) => SecondPage(),
              '/firstPage': (_) => FirstPage(),
            },
            theme: ThemeData(
              primarySwatch: Colors.pink,
            ),
          );
        });
  }
}
