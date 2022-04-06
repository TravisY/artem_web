import 'package:artem_web/screens/Landing.dart';
import 'package:artem_web/services/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  await analytics.setCurrentScreen(screenName: 'Visit');
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
