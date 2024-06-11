import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/widgets/spacing.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield(
      {super.key,
      this.label,
      this.hintText,
      this.type,
      required this.controller,
      this.validator,
      this.onChange,
      this.icon,
      this.readOnly = false,
      this.labelColor = Colors.black});
  final String? label;
  final String? hintText;
  final TextInputType? type;
  final TextEditingController controller;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String?>? onChange;
  final Widget? icon;
  final bool? readOnly;
  final Color? labelColor;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (widget.label! != "")
              ? Text(
                  widget.label!,
                  style: GoogleFonts.montserrat(fontSize: 12),
                )
              : Container(),
          VerticalSpacing(
            height: 8,
          ),
          TextFormField(
            readOnly: widget.readOnly!,
            controller: widget.controller,
            cursorColor: Colors.lightGreen,
            decoration: InputDecoration(
              filled: true,
              fillColor: (widget.readOnly!) ? Colors.white : Colors.grey,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.lightGreen,
                    width: widget.readOnly! ? 0 : 2.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.lightGreen,
                    width: widget.readOnly! ? 0 : 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red, width: 2.0),
              ),
              hintText: widget.hintText!,
              hintStyle: GoogleFonts.montserrat(
                  fontSize: 10, color: Colors.lightGreenAccent),
              counterText: '',
              errorStyle:
                  GoogleFonts.montserrat(fontSize: 10, color: Colors.red),
            ),
            keyboardType: widget.type,
            onChanged: widget.onChange,
            validator: widget.validator,
          ),
        ],
      ),
    );
  }
}

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField(
      {super.key,
      this.visible,
      this.label,
      this.hintText,
      this.type,
      this.onPressed,
      this.onChanged,
      required this.controller,
      this.validator});
  final bool? visible;
  final String? label;
  final String? hintText;
  final TextInputType? type;
  final Function()? onPressed;
  final Function(String?)? onChanged;
  final TextEditingController controller;
  final FormFieldValidator<String?>? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label!,
            style: GoogleFonts.montserrat(fontSize: 12),
          ),
          VerticalSpacing(),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Colors.lightGreen, width: 2.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Colors.lightGreen, width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red, width: 2.0),
              ),
              hintText: hintText!,
              hintStyle: GoogleFonts.montserrat(
                  fontSize: 10, color: Colors.lightGreenAccent),
              counterText: '',
              errorStyle:
                  GoogleFonts.montserrat(fontSize: 10, color: Colors.red),
              suffixIcon: IconButton(
                icon: visible != true
                    ? const Icon(
                        CupertinoIcons.eye,
                        color: Colors.black,
                      )
                    : const Icon(
                        CupertinoIcons.eye_slash,
                        color: Colors.black,
                      ),
                onPressed: onPressed,
              ),
            ),
            keyboardType: type,
            validator: validator,
            obscureText: visible!,
            onChanged: onChanged!,
          ),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
