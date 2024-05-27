import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class SettingsListItem extends StatelessWidget {
  const SettingsListItem({
    super.key,
    required this.prefixIcon,
    required this.text,
    required this.onTap,
  });

  final IconData? prefixIcon;
  final String? text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.lightGreyColor.withOpacity(.3),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  prefixIcon,
                  color: AppColors.primaryColor,
                ),
                smallHorizontalSizedBox,
                Text(
                  text ?? '',
                  style: normalSize15Text(
                    AppColors.blackColor,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.primaryColor,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
