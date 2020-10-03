import 'package:e_commerce_complete_training/splash/splash_content_state.dart';
import 'package:e_commerce_complete_training/splash/splash_content_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

final splashContentViewModelProvider =
    StateNotifierProvider<SplashContentViewModel>(
  (ref) => SplashContentViewModel(),
);

final splashContentStateProvider =
    StateProvider((ref) => SplashContentState(0));
