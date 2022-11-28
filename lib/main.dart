import 'package:flutter/material.dart';
import 'package:limacards/src/screens/basic_design.dart';
import 'package:limacards/src/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_desgin': ( BuildContext context ) => BasicDesignScreen(),
        'scroll_screen': ( BuildContext context ) => ScrollDesignScreen(),
      },
    );
  }
}