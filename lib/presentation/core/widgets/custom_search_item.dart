import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: AppColors.whiteColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            text,
            style: veryBoldSize15Text(
              AppColors.whiteColor,
            ),
          ),
          verySmallHorizontalSizedBox,
          GestureDetector(
            onTap: onTap,
            child: const Icon(
              Icons.close,
              color: AppColors.whiteColor,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
