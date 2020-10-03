import 'package:e_commerce_complete_training/splash/splash_content_state.dart';
import 'package:flutter_riverpod/all.dart';

class SplashContentViewModel extends StateNotifier<SplashContentState> {
  SplashContentViewModel() : super(SplashContentState());

  int currentPage() {
    return state.currentPage;
  }

  void increment() {
    print(this.hashCode);
    state..currentPage += 1;
  }
}
