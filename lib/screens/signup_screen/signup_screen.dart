import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/widgets/custom_button.dart';
import 'package:todo_app/widgets/custom_textfield.dart';
import 'package:todo_app/widgets/spacing.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var _passVisible = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(14),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Registrasi',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              VerticalSpacing(
                height: 16,
              ),
              Text(
                'Silahkan Isi Data di Bawah Ini',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              VerticalSpacing(
                height: 10,
              ),
              CustomTextfield(
                icon: const Icon(CupertinoIcons.person),
                type: TextInputType.name,
                controller: nameController,
                label: "Nama",
              ),
              VerticalSpacing(
                height: 10,
              ),
              CustomTextfield(
                icon: const Icon(CupertinoIcons.mail),
                type: TextInputType.emailAddress,
                controller: emailController,
                label: "Email",
              ),
              VerticalSpacing(
                height: 10,
              ),
              CustomPasswordField(
                label: "Password",
                visible: _passVisible,
                controller: passwordController,
                onPressed: () {
                  setState(() {
                    _passVisible = !_passVisible;
                  });
                },
              ),
              VerticalSpacing(),
              CustomButton(
                buttonTextSize: 16,
                text: "Daftar",
                onPressed: () {},
              )
            ],
          ),
        ),
      )),
    );
  }
}
