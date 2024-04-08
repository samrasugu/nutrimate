import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    required this.onBackButtonPressed,
  });

  final void Function() onBackButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          onBackButtonPressed.call();
        },
        child: SvgPicture.asset(
          backButtonSvgPath,
          height: 25,
          width: 25,
          colorFilter: const ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
