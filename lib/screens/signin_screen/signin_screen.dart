import 'package:flutter/material.dart';
import 'package:todo_app/widgets/auth_container.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: AuthContainer(),
        ),
      )),
    );
  }
}
