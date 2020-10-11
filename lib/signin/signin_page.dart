import 'package:e_commerce_complete_training/default_button.dart';
import 'package:e_commerce_complete_training/signin/social_card.dart';
import 'package:e_commerce_complete_training/signin/text_input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPage extends StatefulWidget {
  static final name = "SigninPage";

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool _isCheck = false;

  void _handleCheckBox(bool isCheck) {
    setState(() {
      _isCheck = isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                SizedBox(height: 30),
                Row(
                  children: [
                    Checkbox(value: _isCheck, onChanged: _handleCheckBox),
                    Text("Remember me"),
                    Spacer(),
                    GestureDetector(
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                DefaultButton(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(SvgPicture.asset("assets/icons/twitter.svg")),
                    SocialCard(SvgPicture.asset("assets/icons/facebook-2.svg")),
                    SocialCard(SvgPicture.asset("assets/icons/google-icon.svg"))
                  ],
                ),
                SizedBox(height: 30),
                Text("Don't have an account?")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
