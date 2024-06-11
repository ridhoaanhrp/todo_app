import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/widgets/custom_button.dart';
import 'package:todo_app/widgets/custom_textfield.dart';
import 'package:todo_app/widgets/spacing.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer(
      {super.key,
      required this.emailController,
      required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CustomTextfield(controller: emailController),
          CustomPasswordField(controller: passwordController),
          VerticalSpacing(),
          const CustomButton(text: 'Masuk'),
          VerticalSpacing(),
          Row(
            children: [
              Text(
                'Belum Punya Akun?',
                style:
                    GoogleFonts.montserrat(fontSize: 12, color: Colors.black),
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
    );
  }
}
