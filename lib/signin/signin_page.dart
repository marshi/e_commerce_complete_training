import 'package:e_commerce_complete_training/signin/text_input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPage extends StatelessWidget {
  static final name = "SigninPage";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: height * 0.04),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              Text(
                "Sign in with your email and password \n or continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height * 0.08),
              DefaultTextInputForm("email"),
              SizedBox(height: 30),
              DefaultTextInputForm(
                "password",
                SvgPicture.asset("assets/icons/Lock.svg"),
              ),
              Row(),
              FlatButton(onPressed: null, child: Text("data")),
              Row(),
              Text("Don't have an account?")
            ],
          ),
        ),
      ),
    );
  }
}
