import 'dart:ui';

import 'package:e_commerce_complete_training/constants.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String imagePath;
  final String text;

  SplashContent(this.imagePath, this.text);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Spacer(flex: 2),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: 40,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center),
        Spacer(flex: 3),
        Image.asset(
          imagePath,
          width: size.width * 0.6,
        ),
      ],
    );
  }
}
