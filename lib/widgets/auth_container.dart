import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/widgets/custom_button.dart';
import 'package:todo_app/widgets/custom_textfield.dart';
import 'package:todo_app/widgets/spacing.dart';

class AuthContainer extends StatefulWidget {
  const AuthContainer({super.key});

  @override
  State<AuthContainer> createState() => _AuthContainerState();
}

class _AuthContainerState extends State<AuthContainer> {
  var _passVisible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Login',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              VerticalSpacing(
                height: 16,
              ),
              CustomTextfield(
                icon: const Icon(CupertinoIcons.mail),
                type: TextInputType.emailAddress,
                controller: emailController,
                label: "Email",
              ),
              VerticalSpacing(),
              CustomPasswordField(
                label: "Password",
                controller: passwordController,
                visible: _passVisible,
                onPressed: () {
                  setState(() {
                    _passVisible = !_passVisible;
                  });
                },
              ),
              VerticalSpacing(),
              CustomButton(
                text: 'Masuk',
                onPressed: () {},
              ),
              VerticalSpacing(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum Punya Akun?',
                    style: GoogleFonts.montserrat(
                        fontSize: 12, color: Colors.black),
                  ),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        'Daftar Sekarang',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.lightGreen),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
