import 'dart:ui';

import 'package:e_commerce_complete_training/constants.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
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
        Text(
          "welcome to Tokoto, Let's shop!",
        ),
        Spacer(flex: 3),
        Image.asset(
          "assets/images/splash_1.png",
          width: size.width * 0.6,
        ),
      ],
    );
  }
}
