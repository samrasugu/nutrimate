import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';

class CustomSelectField extends StatelessWidget {
  const CustomSelectField({
    super.key,
    this.hintText,
    required this.items,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.value,
    this.decoration,
    this.textStyle,
  });

  final String? hintText;
  final List<String> items;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final FormFieldSetter<String>? onChanged;
  final String? value;
  final TextStyle? textStyle;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: items
          .map<DropdownMenuItem<String>>(
            (String item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            ),
          )
          .toList(),
      onChanged: (String? value) {
        onChanged?.call(value);
      },
      onSaved: onSaved,
      validator: validator,
      value: value,
      decoration: decoration,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      dropdownColor: AppColors.whiteColor,
      hint: hintText != null ? Text(hintText!) : null,
      style: textStyle,
    );
  }
}
