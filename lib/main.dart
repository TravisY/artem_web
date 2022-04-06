import 'package:artem_web/screens/Landing.dart';
import 'package:artem_web/services/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artem',
      theme: ArtemTheme(Brightness.light).themeData,
      darkTheme: ArtemTheme(Brightness.dark).themeData,
      home: const LandingScreen(),
    );
  }
}
