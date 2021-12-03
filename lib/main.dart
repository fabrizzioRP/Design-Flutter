import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//
import 'package:disenos/screens/screens.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'Diseños App',
        initialRoute: 'home_screen',
        // initialRoute: 'basic_design',
        // initialRoute: 'scroll_design',
        routes: <String, WidgetBuilder>{
          'home_screen': (_) => HomeScreen(),
          'basic_design': (_) => BasicDesignScreen(),
          'scroll_design': (_) => ScrollScreen(),
        },
      );
}
