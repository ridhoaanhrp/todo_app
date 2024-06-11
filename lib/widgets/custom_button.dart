import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      this.onPressed,
      this.color,
      this.textColor = Colors.white,
      required this.text,
      this.width,
      this.height,
      this.buttonTextSize = 12,
      this.buttonFontWeight = FontWeight.bold,
      this.icon,
      this.borderRadius,
      this.margin});
  final GestureTapCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final String text;
  final double? width;
  final double? height;
  final double? buttonTextSize;
  final FontWeight? buttonFontWeight;
  final Widget? icon;
  final double? borderRadius;
  final EdgeInsets? margin;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width == null ? double.infinity : widget.width,
      height: widget.height == null ? 55 : widget.height,
      margin: widget.margin == null
          ? const EdgeInsets.symmetric(horizontal: 4)
          : widget.margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                widget.borderRadius == null ? 10.0 : widget.borderRadius!)),
          ),
        ),
        onPressed: widget.onPressed,
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: widget.icon == null ? 0 : 8),
                child: widget.icon == null ? Container() : widget.icon,
              ),
              Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  color: widget.textColor,
                  fontWeight: widget.buttonFontWeight,
                  fontSize: widget.buttonTextSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
