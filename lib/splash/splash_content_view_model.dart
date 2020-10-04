import 'package:e_commerce_complete_training/splash/splash_content_state.dart';
import 'package:flutter_riverpod/all.dart';

class SplashContentViewModel extends StateNotifier<SplashContentState> {
  SplashContentViewModel() : super(SplashContentState(0));

  int currentPage() {
    return state.currentPage;
  }

  void setCurrentPage(int page) {
    state = SplashContentState(page);
  }

  void increment() {
    state = SplashContentState((state.currentPage + 1) % 5);
  }
}
