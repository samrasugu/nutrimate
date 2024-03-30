import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? labelText;
  final int maxLines;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? enabled;
  final Color? customFillColor;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Key? formFieldKey;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.labelText,
    this.maxLines = 1,
    this.borderColor,
    this.focusedBorderColor,
    this.inputFormatters,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    bool? obscureText,
    bool? enabled,
    this.customFillColor,
    this.validator,
    this.keyboardType,
    this.formFieldKey,
  })  : enabled = enabled ?? true,
        obscureText = obscureText ?? false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      initialValue: initialValue,
      keyboardType: keyboardType,
      key: formFieldKey,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsetsGeometry.lerp(
          const EdgeInsets.all(17),
          const EdgeInsets.all(17),
          17,
        ),
        hintStyle: const TextStyle(fontSize: 16),
        labelText: labelText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor ?? Colors.black38,
          ),
          gapPadding: 4.0,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
          gapPadding: 4.0,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.black38,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
      ),
      validator: validator,
      maxLines: maxLines,
      obscureText: obscureText,
      enabled: enabled,
    );
  }
}
