import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.text, this.onTap});

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Text(
          text,
          style: boldSize14Text(
            AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
