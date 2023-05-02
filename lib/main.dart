import 'package:flutter/material.dart';
import 'package:aprendendo_flutter/views/pages/android/home_page_android.dart';
import 'package:aprendendo_flutter/views/pages/android/login_page_android.dart';
import 'views/pages/android/splash_page_android.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    theme: ThemeData(
      primarySwatch: Colors.green
    ),
    initialRoute: "/splash",
    routes: {
      "/splash" : (_) => const SplashPageAndroid(),
      "/login" : (_) => const LoginPageAndroid(),
      "/home" : (_) => const HomePageAndroid()

    },
  ),);
}

