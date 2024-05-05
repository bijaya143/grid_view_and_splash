import 'package:class_test_one/screen/grid_screen.dart';
import 'package:class_test_one/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => const SplashScreen(),
      '/grid': (context) => const GridScreen()
    },
  ));
}