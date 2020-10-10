import 'package:e_commerce_complete_training/signin/signin_page.dart';
import 'package:e_commerce_complete_training/splash/splash_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.name: (context) => SplashPage(),
  SigninPage.name: (context) => SigninPage()
};
