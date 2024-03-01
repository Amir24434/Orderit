import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final int maxLine;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final IconButton? suffixIcon;
  final Icon? prefixIcon;
  final Color? color;
  final String label;

  const CustomFormField({
    super.key,
    this.controller,
    this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.maxLine = 1,
    this.readOnly = false,
    this.validator,
    this.suffixIcon,
    required this.prefixIcon,
    this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.manrope(fontSize: 16),
      obscureText: isPassword,
      maxLines: maxLine,
      readOnly: readOnly,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(
            color: OrderitColors.textGreen,
          ),
        ),
        fillColor: color,
        filled: true,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: OrderitColors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: OrderitColors.greenBackground),
        ),
        contentPadding: const EdgeInsets.all(12),
        hintText: hintText,
        hintStyle: GoogleFonts.manrope(color: Colors.grey),
      ),
      validator: validator,
    );
  }
}
