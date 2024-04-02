import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class CustomSelectPill extends StatelessWidget {
  const CustomSelectPill({
    super.key,
    this.text,
    this.isSelected = false,
  });

  final String? text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.whiteColor
            : AppColors.lightGreyColor.withOpacity(.28),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: isSelected ? AppColors.primaryColor : AppColors.whiteColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text ?? '',
            style: veryBoldSize15Text(
              AppColors.blackColor,
            ),
          ),
          if (isSelected)
            const Icon(
              Icons.check,
              color: AppColors.primaryColor,
            ),
        ],
      ),
    );
  }
}
