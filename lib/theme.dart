import 'package:flutter/material.dart';

final theme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  inputDecorationTheme: inputDecorationTheme(),
);

InputDecorationTheme inputDecorationTheme() {
  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  );

  return InputDecorationTheme(
    border: outlineInputBorder,
    contentPadding: EdgeInsets.symmetric(horizontal: 20),
  );
}
