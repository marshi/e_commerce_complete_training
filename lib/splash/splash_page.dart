import 'package:e_commerce_complete_training/constants.dart';
import 'package:e_commerce_complete_training/default_button.dart';
import 'package:e_commerce_complete_training/splash/splash_content.dart';
import 'package:e_commerce_complete_training/splash/splash_content_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends StatelessWidget {
  static final name = "SplashPage";

  final List<Map<String, String>> contents = [
    {
      "text": "welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProviderScope(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Consumer(
                    builder: (context, watch, _) => PageView.builder(
                      itemCount: 3,
                      onPageChanged: (index) {
                        context
                            .read(splashContentViewModelProvider)
                            .setCurrentPage(index);
                      },
                      itemBuilder: (context, index) => SplashContent(
                        contents[index]["image"],
                        contents[index]["text"],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Consumer(
                      builder: (context, watch, _) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) {
                              var splashContentState =
                                  watch(splashContentViewModelProvider.state);
                              print(splashContentState);
                              return createDot(
                                  splashContentState.currentPage, index);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Spacer(),
                DefaultButton(),
                Spacer(),
              ],
            ),
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
