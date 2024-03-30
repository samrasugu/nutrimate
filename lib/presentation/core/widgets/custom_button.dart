import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.borderColor,
    this.fillColor,
    this.customChild,
    this.customElevation,
    this.customPadding,
    this.customBorderRadius,
    this.text,
    this.textColor,
    this.textStyle,
  });

  final void Function()? onPressed;
  final Color? borderColor;
  final Color? fillColor;
  final Widget? customChild;
  final double? customElevation;
  final EdgeInsets? customPadding;
  final double? customBorderRadius;
  final String? text;
  final Color? textColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: customElevation ?? 0,
      fillColor: fillColor,
      padding: customPadding ?? const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(customBorderRadius ?? 0),
        side: BorderSide(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: customChild ??
          Text(
            text ?? '',
            style: textStyle ??
                boldSize16Text(
                  textColor ?? Colors.white,
                ),
          ),
    );
  }
}
