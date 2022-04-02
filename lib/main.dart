import 'package:artem_web/screens/Landing.dart';
import 'package:artem_web/services/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ArtemTheme(Brightness.light).themeData,
      darkTheme: ArtemTheme(Brightness.dark).themeData,
      home: const LandingScreen(),
    );
  }
}