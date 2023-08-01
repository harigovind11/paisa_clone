// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final Color cursorColor;
  final Color textColor;
  final Color hintTextColor;
  final Color fillColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color focusedErrorBorderColor;
  final Color errorStyleColor;

  int? maxLength;
  bool readOnly;
  CustomTextField(
      {Key? key,
      required this.hintText,
      this.obscureText = false,
      this.keyboardType,
      this.validator,
      this.inputFormatter,
      required this.controller,
      this.readOnly = false,
      this.onTap,
      this.maxLength,
      this.cursorColor = kDarkBlue,
      this.textColor = kWhite,
      this.hintTextColor = kWhite,
      this.fillColor = kWhite,
      this.enabledBorderColor = kWhite,
      this.focusedBorderColor = kWhite,
      this.errorBorderColor = kWhite,
      this.focusedErrorBorderColor = kWhite,
      this.errorStyleColor = kOffWhite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatter,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: maxLength,
      cursorColor: cursorColor,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        hintText: hintText,
        hintMaxLines: 1,
        hintStyle: const TextStyle(
          color: kOutlineWhite,
        ),
        filled: true,
        fillColor: fillColor.withOpacity(.125),
        enabledBorder: OutlineInputBorder(
          borderRadius: kRadius10,
          borderSide: BorderSide(
            color: enabledBorderColor.withOpacity(.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: kRadius10,
          borderSide: BorderSide(
            color: focusedBorderColor,
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: kRadius10,
          borderSide: BorderSide(
            color: errorBorderColor,
            width: 2.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: kRadius10,
          borderSide: BorderSide(
            color: focusedErrorBorderColor,
            width: 2.0,
          ),
        ),
        errorStyle: TextStyle(
          color: errorStyleColor,
          fontSize: 13,
        ),
      ),
    );
  }
}
