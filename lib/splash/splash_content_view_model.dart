import 'package:flutter_riverpod/all.dart';

class SplashContentViewModel extends StateNotifier<int> {
  SplashContentViewModel() : super(0);

  int currentPage() {
    return state;
  }

  void increment() {
    print(this.hashCode);
    state = (state + 1) % 5;
  }
}
