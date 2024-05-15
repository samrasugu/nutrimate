import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
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
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final AutovalidateMode? autovalidateMode;

  const CustomTextField({
    super.key,
    this.controller,
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
    this.onTap,
    this.onFieldSubmitted,
    this.onChanged,
    this.autovalidateMode,
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
      onTap: () {
        onTap?.call;
      },
      onFieldSubmitted: (String value) {
        onFieldSubmitted?.call;
      },
      onChanged: (String value) {
        onChanged?.call;
      },
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsetsGeometry.lerp(
          const EdgeInsets.all(10),
          const EdgeInsets.all(10),
          10,
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
              25,
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
              25,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.black38,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              25,
            ),
          ),
        ),
      ),
      validator: validator,
      maxLines: maxLines,
      obscureText: obscureText,
      enabled: enabled,
      autovalidateMode: autovalidateMode,
    );
  }
}
