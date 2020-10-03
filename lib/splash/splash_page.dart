import 'package:e_commerce_complete_training/constants.dart';
import 'package:e_commerce_complete_training/splash/splash_content.dart';
import 'package:e_commerce_complete_training/splash/splash_content_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: SafeArea(
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
                  child: Consumer(
                    builder: (context, watch, _) {
                      final viewModel = watch(splashContentViewModelProvider);
                      print("aiueo ${viewModel.hashCode}");
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) => createDot(viewModel.currentPage(), index),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 1,
                child: Consumer(
                  builder: (context, watch, _) => FlatButton(
                    child: Text("aiueo"),
                    onPressed: () {
                      context.read(splashContentViewModelProvider).increment();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget createDot(int current, int index) {
    return AnimatedContainer(
      width: current == index ? 20 : 6,
      height: 6,
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
