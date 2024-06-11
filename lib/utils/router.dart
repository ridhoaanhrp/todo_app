import 'package:flutter/material.dart';
import 'package:todo_app/screens/signin_screen/signin_screen.dart';
import 'package:todo_app/screens/splash_screen/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/signin':
      return MaterialPageRoute(builder: (context) => const SigninScreen());
    default:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
  }
}
