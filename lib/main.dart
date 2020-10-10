import 'package:e_commerce_complete_training/routes.dart';
import 'package:e_commerce_complete_training/splash/splash_page.dart';
import 'package:e_commerce_complete_training/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      initialRoute: SplashPage.name,
      routes: routes,
    );
  }
}
