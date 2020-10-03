import 'package:e_commerce_complete_training/splash/splash_content.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: SplashContent(),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("aiueo"),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Text("aiueo"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
