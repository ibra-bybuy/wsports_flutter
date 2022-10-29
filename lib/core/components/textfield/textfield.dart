import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final Widget? prefixIcon;
  final Color? borderColor;
  final bool autofocus;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  const CustomTextField({
    super.key,
    this.hint,
    this.prefixIcon,
    this.borderColor,
    this.autofocus = false,
    this.controller,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: autofocus,
      validator: validator,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          fillColor: const Color(0XFFF3F4F5),
          filled: true,
          hintText: hint,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderSide:
                BorderSide(width: 0, color: borderColor ?? Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 0, color: borderColor ?? Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 0, color: borderColor ?? Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 0, color: borderColor ?? Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          hintStyle: GoogleFonts.roboto(
            color: Colors.black,
          )),
      onChanged: onChanged,
    );
  }
}
