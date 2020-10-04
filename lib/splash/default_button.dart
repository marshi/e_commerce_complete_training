import 'package:e_commerce_complete_training/constants.dart';
import 'package:e_commerce_complete_training/splash/splash_content_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DefaultButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer(
      builder: (context, watch, _) => SizedBox(
        height: 60,
        width: size.width * 0.85,
        child: FlatButton(
          child: Text(
            "Continue",
            style: TextStyle(fontSize: 25),
          ),
          textColor: Colors.white,
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
          onPressed: () {
            context.read(splashContentViewModelProvider).increment();
          },
        ),
      ),
    );
  }
}
