import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("TOKOTO"),
          Text("welcome to Tokoto, Let's shop!"),
          Image.asset("assets/images/splash_1.png"),
          FlatButton(
            onPressed: null,
            child: Text("aiueo"),
          ),
        ],
      ),
    );
  }
}
