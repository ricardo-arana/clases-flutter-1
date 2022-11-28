import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:limacards/src/screens/basic_design.dart';
import 'package:limacards/src/screens/home_screen.dart';
import 'package:limacards/src/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home_screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        'basic_desgin': (BuildContext context) => BasicDesignScreen(),
        'scroll_screen': (BuildContext context) => ScrollDesignScreen(),
        'home_screen': (BuildContext context) => HomeScreen(),
      },
    );
  }
}
